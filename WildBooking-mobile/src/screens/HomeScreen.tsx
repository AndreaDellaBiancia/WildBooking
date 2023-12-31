import React from "react";
import {
  Image,
  ImageBackground,
  ScrollView,
  StyleSheet,
  Text,
  TouchableOpacity,
  View,
} from "react-native";//@ts-ignore
import home from "../../assets/images/home.jpg";//@ts-ignore
import service_rapide from "../../assets/images/foudre.png";//@ts-ignore
import hotline from "../../assets/images/hotline.png";//@ts-ignore
import paiements_sec from "../../assets/images/card.png";//@ts-ignore
import skieur from "../../assets/images/skieur.jpg";
import ProductCard from "../components/ProductCard";
import { RootState } from "../stores";
import { useSelector } from "react-redux";
import { loadHomeProducts } from "../Tools/UseQuery";

export default function HomeScreen({ navigation }: any) {

  loadHomeProducts();

  const lastFourProducts = useSelector(
    (state: RootState) => state.products.homeProducts
  );

  return (
    <ScrollView>
      <View style={styles.container}>
        <View style={{ flex: 1, width: "100%", top: -30}}>
          <ImageBackground
            source={home}
            resizeMode="cover"
            style={styles.image}
          >
            <TouchableOpacity style={styles.buttonView} onPress={() => navigation.navigate('Catalogue')}>
                <Text style={styles.button}>
                  Rechercher les produits
                </Text>
            </TouchableOpacity>
          </ImageBackground>
        </View>
        <Text
          style={{
            flex: 1,
            width: "100%",
            textAlign: "center",
            fontWeight: "bold",
            fontSize: 20,
          }}
        >
          Derniers Produits Ajoutés
        </Text>
        <View style={{ flex: 1, width: "100%", flexDirection: "row" }}>
          <ScrollView horizontal>
            {
              lastFourProducts.map((product) => {//@ts-ignore
               return <ProductCard key={product.id} product={product} />
              })
            }            
          </ScrollView>
        </View>
      </View>
      <View style={styles.homeServicesContainer}>
        <View style={styles.homeServices}>
          <ImageBackground source={home} resizeMode="cover">
            <View style={[styles.homeServicesBody]}>
              <Text style={styles.homeServicesTitle}>
                Une expertise à votre service
              </Text>
              <View style={styles.service}>
                <Image style={styles.serviceImage} source={hotline} />
                <Text style={styles.serviceText}>Hotline</Text>
                <Text style={styles.serviceText}>06 70 45 65 72</Text>
              </View>
              <View style={styles.service}>
                <Image style={styles.serviceImage} source={service_rapide} />
                <Text style={styles.serviceText}>Service Rapide</Text>
                <Text style={styles.serviceText}>Retrait sous 1 heure</Text>
              </View>
              <View style={styles.service}>
                <Image style={styles.serviceImage} source={paiements_sec} />
                <Text style={styles.serviceText}>Paiements Sécurisés</Text>
                <Text style={styles.serviceText}>CB, Paypal, ApplePay</Text>
              </View>
            </View>
          </ImageBackground>
        </View>
      </View>
      <View>  
        
        <Text style={styles.homeEndDescription}>
          {" "}
          Notre site de location de matériel de sport pour la montagne 
          offre une large sélection d'équipements pour tous les niveaux 
          et toutes les activités en montagne, que ce soit pour le ski, la randonnée, 
             l'escalade ou encore le camping.
        </Text>
        <Text style={styles.homeEndDescription}>
          {" "}
          Nous proposons des produits de qualité pour garantir une expérience de montagne inoubliable. 
          Avec notre service de réservation en ligne facile à utiliser, 
          vous pouvez réserver votre équipement en quelques clics et le récupérer directement sur place.
        </Text>
        <Image
          source={skieur}
          resizeMode="cover"
          style={styles.imageMountain}
        />
      </View>
    </ScrollView>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  image: {
    flex: 1,
    justifyContent: "center",
    position: "relative",
    top: -30,
    width: "100%",
    height: 550,
  },
  buttonView: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
  },
  button: {
    width: "70%",
    padding: 15,
    textAlign: "center",
    opacity: 0.8,
    borderWidth: 1,
    borderRadius: 5,
    borderColor: "white",
    shadowColor: "black",
    shadowOffset: { width: 0, height: 2 },
    shadowOpacity: 1,
    shadowRadius: 3,
    elevation: 3,
    fontSize: 15,
    color: "white",
    backgroundColor: "rgba(120, 120, 120, 0.3)",
  },
  homeServicesContainer: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    marginVertical: 50,
  },
  homeServicesBody: {
    backgroundColor: "#175e81b3", 
    paddingVertical: 40
  } ,
  homeServicesTitle: {
    fontSize: 25,
    fontWeight: "bold",
    marginBottom: 30,
    color: "white",
    textAlign: "center",
  },
  homeServices: {
    width: "100%",
  },
  service: {
    flex: 1,
    justifyContent: "center",
    alignItems: "center",
    marginBottom: 23,
  },
  serviceText: {
    fontSize: 20,
    fontWeight: "bold",
    color: "white",
  },
  serviceImage: {
    resizeMode: "center",
    width: 100,
    height: 100,
    marginBottom: 6,
  },
  imageMountain: {
    flex: 1,
    justifyContent: "center",
    position: "relative",
    width: "100%",
    height: 550,
  },
  homeEndTitle: {
    fontWeight: "bold",
    textAlign: "center",
    fontSize: 25,
    marginBottom: 30
  },
  homeEndDescription: {
    textAlign: "center",
    fontSize: 18,
    marginBottom: 50,
    paddingHorizontal: 15
  }
});
