import java.io.File;  
import java.io.FileNotFoundException;  
import java.util.Scanner;
import java.util.*;
import java.util.regex.*;
import java.io.FileWriter;   
import java.io.IOException;
public class Main{
    // static String[] palabrasAbuscar = {"getDayOfExecutionFriday",
    //  "diasAjusteValores",
    // "ExisteAlMenos1InstanciaModeloDatos",
    // "getBranch_F523",
    // "getColumnWithSelectByDate5",
    // "getDayOfExecutionFriday",
    // "getDayOfExecutionFriday_F519",
    // "getEarlySourceInstanceBusiOnly",
    // "getFirstBusiDayOfMonth",
    // "getFirstBusiDayOfQtr",
    // "getFirstBusiDayOfQtr_All_Calendars",
    // "getIsBusinessDay",
    // "getLastBussDayPrevWeek",
    // "getLatestWeekendDayOfMonth",
    // "getLoadDaysfor441",
    // "getPrevBusiDay",
    // "getPrevBusinessDayFromDate",
    // "GetPrevFridayCalendar",
    // "GetPrevFridayLastWeek",
    // "getTipoCodigoEntidad",
    // "getWkndDaysBssDateWOutToday",
    // "IFRS_new_update_parameters",
    // "MyC_IFRS_Validacion_Parametros_errores",
    // "MyC_IFRS_Validacion_Parametros_num_errores",
    // "getExecuteQuarterByDate",
    // "isDateInActualQrt"};
    static String[] palabrasAbuscar = {"wfe_saveDataSourceIntoFile"};
    static String rutaBuscandoActualmetne="";
     public static void main(String[]args){
        File[] RutaDondeSeBuscara = new File("C:/Users/diego.cely/Documents/CV9").listFiles();
        for (int i = 0; i < RutaDondeSeBuscara.length; i++) {
            BUSCADOR(RutaDondeSeBuscara[i]);
        }
    }

    public static void BUSCADOR(File ArchivoOruta){
        if (ArchivoOruta.isFile()) {
           //System.out.println("-> "+ ArchivoOruta);
           for(String palabra : palabrasAbuscar){
                Encontrar(ArchivoOruta, palabra);
           }
        } 
        else if (ArchivoOruta.isDirectory() && !((ArchivoOruta+"").contains("DataModelViewLayout"))) {
            //System.out.println("----///"+ ArchivoOruta);
            rutaBuscandoActualmetne = (ArchivoOruta+"");
            File[] abrirFolder = new File(ArchivoOruta+"").listFiles();
            for(File archivos : abrirFolder){
                BUSCADOR(archivos);
            }
        } 
    }

    public static void Encontrar(File archivoXML, String palabraAbuscar){
        String text ="";
        try {
           Scanner myReader = new Scanner(archivoXML);
           while (myReader.hasNextLine()) {
                text += myReader.nextLine();
            }
            myReader.close();
            List<String> tokens = new ArrayList<String>();
            tokens.add(palabraAbuscar);
            for (String word : tokens) {
                String patternString = "\\b(" + word + ")\\b";
                Pattern pattern = Pattern.compile(patternString);
                Matcher matcher = pattern.matcher(text);
                while (matcher.find()) {
                    System.out.println(matcher.group(1) +","+archivoXML.getName()+ ","+ rutaBuscandoActualmetne.substring(46));
                }
            }
        }catch(IOException e){
            System.out.println("ERROR ABRIENDO EL ARCHIVO");
            e.printStackTrace();
        }
    }
}