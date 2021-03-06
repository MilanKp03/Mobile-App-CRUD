package com.triofantastico.mobile_app.entity;




import javax.persistence.Transient;
import java.util.Base64;


public class Mobile implements java.io.Serializable {

    private Integer mobileId;
    private String mobileModel;
    private String mobileProducer;
    private String mobileProcessor;
    private String mobileScreen;
    private String mobileCamera;
    private String mobileSound;
    private String mobileMemory;
    private String mobileOs;
    private byte[] mobilePhoto;
    private String mobileDescription;
    
    
    @Transient
    private String base64Image;

    public Mobile() {
    }
    
    
    public Mobile(String mobileModel, String mobileProducer, String mobileProcessor, String mobileScreen, String mobileCamera, String mobileSound, String mobileMemory, String mobileOs, byte[] mobilePhoto, String mobileDescription) {
        this.mobileModel = mobileModel;
        this.mobileProducer = mobileProducer;
        this.mobileProcessor = mobileProcessor;
        this.mobileScreen = mobileScreen;
        this.mobileCamera = mobileCamera;
        this.mobileSound = mobileSound;
        this.mobileMemory = mobileMemory;
        this.mobileOs = mobileOs;
        this.mobilePhoto = mobilePhoto;
        this.mobileDescription = mobileDescription;
        this.base64Image = getBase64Image();
        
    }

    /**
     *
     * @return
     */
    public String getBase64Image() {
        base64Image = Base64.getEncoder().encodeToString(this.mobilePhoto);
        return base64Image;
    }

    /**
     *
     * @param base64Image
     */
    public void setBase64Image(String base64Image) {
        this.base64Image = base64Image;
    }

    public Integer getMobileId() {
        return this.mobileId;
    }

    public void setMobileId(Integer mobileId) {
        this.mobileId = mobileId;
    }

    public String getMobileModel() {
        return this.mobileModel;
    }

    public void setMobileModel(String mobileModel) {
        this.mobileModel = mobileModel;
    }

    public String getMobileProducer() {
        return this.mobileProducer;
    }

    public void setMobileProducer(String mobileProducer) {
        this.mobileProducer = mobileProducer;
    }

    public String getMobileProcessor() {
        return this.mobileProcessor;
    }

    public void setMobileProcessor(String mobileProcessor) {
        this.mobileProcessor = mobileProcessor;
    }

    public String getMobileScreen() {
        return this.mobileScreen;
    }

    public void setMobileScreen(String mobileScreen) {
        this.mobileScreen = mobileScreen;
    }

    public String getMobileCamera() {
        return this.mobileCamera;
    }

    public void setMobileCamera(String mobileCamera) {
        this.mobileCamera = mobileCamera;
    }

    public String getMobileSound() {
        return this.mobileSound;
    }

    public void setMobileSound(String mobileSound) {
        this.mobileSound = mobileSound;
    }

    public String getMobileMemory() {
        return this.mobileMemory;
    }

    public void setMobileMemory(String mobileMemory) {
        this.mobileMemory = mobileMemory;
    }

    public String getMobileOs() {
        return this.mobileOs;
    }

    public void setMobileOs(String mobileOs) {
        this.mobileOs = mobileOs;
    }

    public byte[] getMobilePhoto() {
        return this.mobilePhoto;
    }

    public void setMobilePhoto(byte[] mobilePhoto) {
        this.mobilePhoto = mobilePhoto;
    }

    public String getMobileDescription() {
        return this.mobileDescription;
    }

    public void setMobileDescription(String mobileDescription) {
        this.mobileDescription = mobileDescription;
    }

}
