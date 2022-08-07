import QtQuick 2.15
import "../theScripts/updateIndicator.js" as UIN
Item
{
    id:itemRoot;
//    height:parent.height/15;
    property int setHeight: 80;
    property int setWidth: 320;
    height:setHeight;
    width:setWidth;
    clip:true;
    anchors.horizontalCenter: parent.horizontalCenter;
    signal index_a_clicked;
    signal index_b_clicked;
    signal index_c_clicked;
    signal index_d_clicked;
    property int myIndicatorIndex: -1;
    property string myIndicatorIndexAText: "A";
    property string myIndicatorIndexBText: "B";
    property string myIndicatorIndexCText: "C";
    property string myIndicatorIndexDText: "D";
    property string setIconIndexA: "";
    property string setIconIndexB: "";
    property string setIconIndexC: "";
    property string setIconIndexD: "";

//    property color setLabelColor: "black";//;
    property int setLabelFontSize:8;
    property int indexesWidth: 70;//rowArea.width/3.5;
    property int indexesHeight: 70; //rowArea.height
    property int indexesRadius: 50;
    property int setIconTopMargin:10;
    property int setIconWidthHeight: 25;
    property int setLabelTopMargin: root.height/2;


//    onMyIndicatorIndexChanged:
//    {
//        switch(myIndicatorIndex)
//        {
//            case 0 : UIN.setIndexActive(indexD,indexC,indexA,indexB,iconD);break;
////            case 1 : UIN.setIndexActive(indexA,indexB,indexC,indexD,iconA);break;
//            case 2 : UIN.setIndexActive(indexB,indexC,indexA,indexD,iconB);break;
//            case 3 : UIN.setIndexActive(indexC,indexA,indexB,indexD,iconC);break;
////            case 3 :
//        }
//    }



    Rectangle
    {
        id:root;
        anchors.fill: parent;
        color:cBG;
        Row
        {
            id:rowArea;
            anchors.fill: parent;
            anchors.horizontalCenter: root.horizontalCenter;
            anchors.left: root.left;
//            anchors.leftMargin: root.width/25;
            anchors.bottom: root.bottom;
            anchors.bottomMargin: 5;
            spacing: root.width/25;

            Rectangle
            {
                id:indexD;
                clip:true;
                width:indexesWidth;
                height:indexesHeight;
                radius: indexesRadius;
                color : myIndicatorIndex==0 ? cBG_button: cBG_button_deactivated;

                Rectangle
                {
                    width: setIconWidthHeight;
                    height:setIconWidthHeight;
                    color:cBG_Unknown;
                    anchors.horizontalCenter: parent.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setIconTopMargin;
                    Image
                    {
                        id:iconD;
                        anchors.fill: parent;
                        source: setIconIndexD;
                    }
                }
                Text
                {
                    anchors.horizontalCenter: indexD.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setLabelTopMargin;
                    text:myIndicatorIndexDText;
                    color:cTxt_button;
                    font.pointSize: setLabelFontSize;
                }
                MouseArea
                {
                    anchors.fill: parent;
                    onClicked:
                    {
                        index_d_clicked();
                    }
                }
            }//end of index D



            Rectangle
            {
                id:indexA;
                clip:true;
                width:indexesWidth;
                height:indexesHeight;
                radius: indexesRadius;
                color:myIndicatorIndex==1 ? cBG_button: cBG_button_deactivated;

                Rectangle
                {
                    width: setIconWidthHeight;
                    height:setIconWidthHeight;
                    color:cBG_Unknown;
                    anchors.horizontalCenter: parent.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setIconTopMargin;
                    Image
                    {
                        id:iconA;
                        anchors.fill: parent;
                        source: setIconIndexA;
                    }
                }
                Text
                {
                    anchors.horizontalCenter: indexA.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setLabelTopMargin;
                    text:myIndicatorIndexAText;
                    color:cTxt_button;
                    font.pointSize: setLabelFontSize;
                }
                MouseArea
                {
                    anchors.fill: parent;
                    onClicked:
                    {
                        index_a_clicked();
                    }
                }

            }


            Rectangle
            {
                id:indexB;
                clip:true;
                width:indexesWidth;
                height:indexesHeight;
                radius: indexesRadius;
                color : myIndicatorIndex==2 ? cBG_button: cBG_button_deactivated;
                Rectangle
                {
                    width: setIconWidthHeight;
                    height:setIconWidthHeight;
                    color:cBG_Unknown;
                    anchors.horizontalCenter: parent.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setIconTopMargin;
                    Image
                    {
                        id:iconB;
                        anchors.fill: parent;
                        source: setIconIndexB;
                    }
                }

                Text
                {
                    anchors.horizontalCenter: indexB.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setLabelTopMargin;
                    text:myIndicatorIndexBText;
                    color: cTxt_button;
                    font.pointSize: setLabelFontSize;
                }
                MouseArea
                {
                    anchors.fill: parent;
                    onClicked:
                    {
                        index_b_clicked();
                    }
                }
            }


            Rectangle
            {
                id:indexC;
                clip:true;
                width:indexesWidth;
                height:indexesHeight;
                radius: indexesRadius;
                color : myIndicatorIndex==3 ? cBG_button: cBG_button_deactivated;
                Rectangle
                {
                    width: setIconWidthHeight;
                    height:setIconWidthHeight;
                    color:cBG_Unknown;
                    anchors.horizontalCenter: parent.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setIconTopMargin;
                    Image
                    {
                        id:iconC;
                        anchors.fill: parent;
                        source: setIconIndexC;
                    }
                }
                Text
                {
                    anchors.horizontalCenter: indexC.horizontalCenter;
                    anchors.top:parent.top;
                    anchors.topMargin: setLabelTopMargin;
                    text:myIndicatorIndexCText;
                    color:cTxt_button;
                    font.pointSize: setLabelFontSize;
                }
                MouseArea
                {
                    anchors.fill: parent;
                    onClicked:
                    {
                        index_c_clicked();
                    }
                }
            }//end of index c





        }
    }
}
