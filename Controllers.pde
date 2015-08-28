//Controllers tab
// controllers setup
// file name text field moved to legend tab

void textSetup(){
 ////////////////////////////////////////////////Text Fields//////////////////////////////
  cp5 = new ControlP5(this);  
  PFont font = createFont("arial", 20);
  PFont font2 = createFont("arial", 16);
//  PFont font3 = createFont("arial",12); 

  Starting_Voltage = cp5.addTextfield("Starting_Voltage")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6)//(#FFFEFC) 
        .setColorForeground(#AA8A16) 
         .setPosition(20, 80)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                     .setText("-400")//;
  //                    controlP5.Label svl = Starting_Voltage
                  .setCaptionLabel("Initial")
                  .setFont(font2);
              //    .toUpperCase(false);
  //                      svl.setFont(font2);
  //                        svl.toUpperCase(false);
   //                         svl.setText("Initial");
  ;

  
  End_Voltage = cp5.addTextfield("End_Voltage")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
          .setPosition(100, 80)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                   .setText("400")
                  .setCaptionLabel("Final")
                  .setFont(font2);
;
       /*               controlP5.Label evl = End_Voltage.captionLabel(); 
                        evl.setFont(font2);
                          evl.toUpperCase(false);
                            evl.setText("Final");*/
  ;

  Scan_Rate = cp5.addTextfield("Scan_Rate")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
           .setPosition(100, 266)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                   .setText("100")
                   .setCaptionLabel("mV/sec")
                  .setFont(font2);
;
                 /*     controlP5.Label srl = Scan_Rate.captionLabel(); 
                        srl.setFont(font2);
                          srl.toUpperCase(false);
                           srl.setText("mV/sec");*/
   ;
   delay2 = cp5.addTextfield("delay2")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
           .setPosition(100, 266)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                   .setText("500")
                   .setCaptionLabel("mSec")
                  .setFont(font2);
;
/*                      controlP5.Label dl2 = delay2.captionLabel(); 
                        dl2.setFont(font2);
                          dl2.toUpperCase(false);
                           dl2.setText("mSec");*/
   ;
    cp5.addSlider("gain")
     .setPosition(20,212)
     .setSize(125,12)
     .setRange(0,30)
     .setValue(10)
     ;
//  cp5.getController("gain").getCaptionLabel().align(ControlP5.LEFT, ControlP5.TOP_OUTSIDE).setPaddingX(0); //BOTTOM_OUT  / 
  
    
    readTime = cp5.addTextfield("readTime")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
           .setPosition(750, 80) 
            .setSize(40, 25)
              .setFont(font)
                .setFocus(false)
                   .setText("500")
                  .setCaptionLabel("readTime")
                  .setFont(font2);
;
/*             controlP5.Label gain = Gain.captionLabel(); 
                        gain.setFont(font2);
                          gain.toUpperCase(false);
                            gain.setText("Gain"); */
  ;
  readIvl = cp5.addTextfield("readIvl")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16)  //position next
           .setPosition(750, 130)       

            .setSize(40, 25)
              .setFont(font)
                .setFocus(false)
                   .setText("20")
                  .setCaptionLabel("Read Interval")
                  .setFont(font2);
;  
        /*              controlP5.Label oLb = offset.captionLabel(); 
                        oLb.setFont(font2);
                          oLb.toUpperCase(false);
                            oLb.setText("Offset");
  ;*/

  Delay_Time = cp5.addTextfield("Delay_Time")
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
          .setPosition(20, 266)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                    .setText("2")
                   .setCaptionLabel("Seconds")
                  .setFont(font2);
;
   /*                   controlP5.Label dtl = Delay_Time.captionLabel(); 
                        dtl.setFont(font2);
                          dtl.toUpperCase(false);
                            dtl.setText("Seconds");                    
  ;*/

  
    Number_of_Runs = cp5.addTextfield("Number_of_Runs")  // time based txt field
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
          .setPosition(20, 360)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                    .setText("3")
                  .setCaptionLabel("Number")
                  .setFont(font2);
/*;
                      controlP5.Label norl = Number_of_Runs.captionLabel(); 
                        norl.setFont(font2);
                          norl.toUpperCase(false);
                            norl.setText("Number");                    
  ;*/
  
    Run_Interval = cp5.addTextfield("Run_Interval")  // time based txt field
    .setColor(#030302) 
      .setColorBackground(#CEC6C6) 
        .setColorForeground(#AA8A16) 
          .setPosition(100, 360)
            .setSize(60, 30)
              .setFont(font)
                .setFocus(false)
                   .setText("1")
                  .setCaptionLabel("Delay")
                  .setFont(font2);
/*;
                      controlP5.Label ril = Run_Interval.captionLabel(); 
                        ril.setFont(font2);
                          ril.toUpperCase(false);
                            ril.setText("D2 (Sec)");                    
  ;*/

  ///////////////////////////////////////text area//////////////////////////

  errorText = cp5.addTextarea("txt")  // save path text area
    .setPosition(350, 5) // was 280,5
      .setSize(240, 45)
        .setFont(font)      // was font 4
          .setLineHeight(20)
            .setColor(#FF9100)        //(#D60202)
              .setColorBackground(#24375F)         //(#CEC6C6)
                .setColorForeground(#AA8A16)//#CEC6C6
                    ;  

/* myTextarea2 = cp5.addTextarea("txt2")  // status and com port text area
    .setPosition(150, 8)
      .setSize(100, 20)   //was 30
        .setFont(createFont("arial", 12)) //(font)
          .setLineHeight(10)
            .setColor(#030302)
              .setColorBackground(#CEC6C6)
                .setColorForeground(#AA8A16)//#CEC6C6
                    ;*/

// cp5 = new ControlP5(this);

/*PImage[] imgs = {loadImage("run_button1.png"),loadImage("run_button2.png"),loadImage("run_button3.png")};
//PImage[] img2 = {loadImage("stop_button1.png"),loadImage("stop_button2.png"),loadImage("stop_button3.png")};
  cp5.addButton("play")
     .setValue(128)
     .setPosition(50,450)
     .setImages(imgs)
     .updateSize()
     ;*/


/******************* end cp5_controllers-setup ***********************/
