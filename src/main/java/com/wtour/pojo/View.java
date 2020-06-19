package com.wtour.pojo;

import java.io.Serializable;

public class View implements Serializable {
    private Integer viewid;

    private String spot;

    private String place;

    private Long price;

    private String brief;

    private String videoPath;

    private String imagePath;

    private static final long serialVersionUID = 1L;

    public Integer getViewid() {
        return viewid;
    }

    public void setViewid(Integer viewid) {
        this.viewid = viewid;
    }

    public String getSpot() {
        return spot;
    }

    public void setSpot(String spot) {
        this.spot = spot == null ? null : spot.trim();
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place == null ? null : place.trim();
    }

    public Long getPrice() {
        return price;
    }

    public void setPrice(Long price) {
        this.price = price;
    }

    public String getBrief() {
        return brief;
    }

    public void setBrief(String brief) {
        this.brief = brief == null ? null : brief.trim();
    }

    public String getVideoPath() {
        return videoPath;
    }

    public void setVideoPath(String videoPath) {
        this.videoPath = videoPath == null ? null : videoPath.trim();
    }

    public String getImagePath() {
        return imagePath;
    }

    public void setImagePath(String imagePath) {
        this.imagePath = imagePath == null ? null : imagePath.trim();
    }

    @Override
    public String toString() {
        return "View{" +
                "viewid=" + viewid +
                ", spot='" + spot + '\'' +
                ", place='" + place + '\'' +
                ", price=" + price +
                ", brief='" + brief + '\'' +
                ", videoPath='" + videoPath + '\'' +
                ", imagePath='" + imagePath + '\'' +
                '}';
    }
}