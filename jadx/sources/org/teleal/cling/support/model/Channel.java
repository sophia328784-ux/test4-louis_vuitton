package org.teleal.cling.support.model;

/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX WARN: Unknown enum class pattern. Please report as an issue! */
/* JADX INFO: loaded from: classes5.dex */
public final class Channel {
    private static final /* synthetic */ Channel[] $VALUES;
    public static final Channel CF;
    public static final Channel LF;
    public static final Channel LFC;
    public static final Channel LFE;
    public static final Channel LS;
    public static final Channel Master;
    public static final Channel RF;
    public static final Channel RFC;
    public static final Channel RS;
    public static final Channel SD;
    public static final Channel SL;
    public static final Channel SR;
    public static final Channel Single;
    public static final Channel T;

    static {
        Channel channel = new Channel("Single", 0);
        Single = channel;
        Channel channel2 = new Channel("Master", 1);
        Master = channel2;
        Channel channel3 = new Channel("LF", 2);
        LF = channel3;
        Channel channel4 = new Channel("RF", 3);
        RF = channel4;
        Channel channel5 = new Channel("CF", 4);
        CF = channel5;
        Channel channel6 = new Channel("LFE", 5);
        LFE = channel6;
        Channel channel7 = new Channel("LS", 6);
        LS = channel7;
        Channel channel8 = new Channel("RS", 7);
        RS = channel8;
        Channel channel9 = new Channel("LFC", 8);
        LFC = channel9;
        Channel channel10 = new Channel("RFC", 9);
        RFC = channel10;
        Channel channel11 = new Channel("SD", 10);
        SD = channel11;
        Channel channel12 = new Channel("SL", 11);
        SL = channel12;
        Channel channel13 = new Channel("SR", 12);
        SR = channel13;
        Channel channel14 = new Channel("T", 13);
        T = channel14;
        $VALUES = new Channel[]{channel, channel2, channel3, channel4, channel5, channel6, channel7, channel8, channel9, channel10, channel11, channel12, channel13, channel14};
    }

    public static Channel valueOf(String str) {
        return (Channel) Enum.valueOf(Channel.class, str);
    }

    public static Channel[] values() {
        return (Channel[]) $VALUES.clone();
    }
}
