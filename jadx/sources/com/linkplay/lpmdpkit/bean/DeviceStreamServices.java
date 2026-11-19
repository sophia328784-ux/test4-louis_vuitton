package com.linkplay.lpmdpkit.bean;

import android.text.TextUtils;
import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class DeviceStreamServices implements Serializable {
    private String encrypt;
    private List<StreamServicesBean> streamServices;
    private String version;

    public static class StreamServices {
        public static final String CALM_RADIO = "CalmRadio";
        public static final String DEEZER = "deezer";
        public static final String DEEZER_2 = "Deezer2";
        public static final String IHEARTAUDIO = "iheartaudio";
        public static final String LINKPLAY_SPOTIFY = "LinkplaySpotify";
        public static final String NEW_TUNEIN = "newTuneIn";
        public static final String PRIME = "prime";
        public static final String QOBUZ = "Qobuz";
        public static final String RHAPSODY = "rhapsody";
        public static final String ROON_READY = "Roon";
        public static final String SOUND_CLOUD = "SoundCloud";
        public static final String SOUND_MACHINE = "soundmachine";
        public static final String TUNEIN = "tunein";
    }

    public static class StreamServicesBean implements Serializable {
        private List<String> audioSurround;
        private String id;
        private List<String> quality;
        private String version;

        public List<String> getAudioSurround() {
            return this.audioSurround;
        }

        public String getId() {
            return this.id;
        }

        public List<String> getQuality() {
            return this.quality;
        }

        public String getVersion() {
            return this.version;
        }

        public void setAudioSurround(List<String> list) {
            this.audioSurround = list;
        }

        public void setId(String str) {
            this.id = str;
        }

        public void setQuality(List<String> list) {
            this.quality = list;
        }

        public void setVersion(String str) {
            this.version = str;
        }
    }

    public List<String> getAudioSurround(String str) {
        if (this.streamServices == null || TextUtils.isEmpty(str)) {
            return null;
        }
        for (StreamServicesBean streamServicesBean : this.streamServices) {
            if (streamServicesBean != null && str.equalsIgnoreCase(streamServicesBean.id)) {
                return streamServicesBean.getAudioSurround();
            }
        }
        return null;
    }

    public String getEncrypt() {
        return this.encrypt;
    }

    public List<String> getQuality(String str) {
        if (this.streamServices == null || TextUtils.isEmpty(str)) {
            return null;
        }
        for (StreamServicesBean streamServicesBean : this.streamServices) {
            if (streamServicesBean != null && str.equalsIgnoreCase(streamServicesBean.id)) {
                return streamServicesBean.getQuality();
            }
        }
        return null;
    }

    public String getStreamServiceVersion(String str) {
        if (this.streamServices == null || TextUtils.isEmpty(str)) {
            return "";
        }
        for (StreamServicesBean streamServicesBean : this.streamServices) {
            if (streamServicesBean != null && str.equalsIgnoreCase(streamServicesBean.id)) {
                return streamServicesBean.version;
            }
        }
        return "";
    }

    public List<StreamServicesBean> getStreamServices() {
        return this.streamServices;
    }

    public String getVersion() {
        return this.version;
    }

    public boolean isNewVersion(String str) {
        String streamServiceVersion = getStreamServiceVersion(str);
        return !TextUtils.isEmpty(streamServiceVersion) && streamServiceVersion.compareTo("1.0") >= 0;
    }

    public boolean isSupportCalmRadio() {
        return !TextUtils.isEmpty(getStreamServiceVersion("CalmRadio"));
    }

    public boolean isSupportDeezer2() {
        return !TextUtils.isEmpty(getStreamServiceVersion("Deezer2"));
    }

    public boolean isSupportLinkplaySpotify() {
        return !TextUtils.isEmpty(getStreamServiceVersion("LinkplaySpotify"));
    }

    public boolean isSupportRoonReady() {
        return !TextUtils.isEmpty(getStreamServiceVersion(StreamServices.ROON_READY));
    }

    public boolean isSupportSoundCloud() {
        return !TextUtils.isEmpty(getStreamServiceVersion("SoundCloud"));
    }

    public boolean isSupportSoundMachine() {
        return !TextUtils.isEmpty(getStreamServiceVersion(StreamServices.SOUND_MACHINE));
    }

    public void setEncrypt(String str) {
        this.encrypt = str;
    }

    public void setStreamServices(List<StreamServicesBean> list) {
        this.streamServices = list;
    }

    public void setVersion(String str) {
        this.version = str;
    }
}
