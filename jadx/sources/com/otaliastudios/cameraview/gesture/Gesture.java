package com.otaliastudios.cameraview.gesture;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'PINCH' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:485)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:422)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:351)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:284)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:153)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:102)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* JADX INFO: loaded from: classes3.dex */
public final class Gesture {
    private static final /* synthetic */ Gesture[] $VALUES;
    public static final Gesture LONG_TAP;
    public static final Gesture PINCH;
    public static final Gesture SCROLL_HORIZONTAL;
    public static final Gesture SCROLL_VERTICAL;
    public static final Gesture TAP;
    private GestureType type;

    static {
        GestureType gestureType = GestureType.CONTINUOUS;
        Gesture gesture = new Gesture("PINCH", 0, gestureType);
        PINCH = gesture;
        GestureType gestureType2 = GestureType.ONE_SHOT;
        Gesture gesture2 = new Gesture("TAP", 1, gestureType2);
        TAP = gesture2;
        Gesture gesture3 = new Gesture("LONG_TAP", 2, gestureType2);
        LONG_TAP = gesture3;
        Gesture gesture4 = new Gesture("SCROLL_HORIZONTAL", 3, gestureType);
        SCROLL_HORIZONTAL = gesture4;
        Gesture gesture5 = new Gesture("SCROLL_VERTICAL", 4, gestureType);
        SCROLL_VERTICAL = gesture5;
        $VALUES = new Gesture[]{gesture, gesture2, gesture3, gesture4, gesture5};
    }

    public Gesture(String str, int i2, GestureType gestureType) {
        super(str, i2);
        this.type = gestureType;
    }

    public static Gesture valueOf(String str) {
        return (Gesture) Enum.valueOf(Gesture.class, str);
    }

    public static Gesture[] values() {
        return (Gesture[]) $VALUES.clone();
    }

    public final boolean a(GestureAction gestureAction) {
        return gestureAction == GestureAction.NONE || gestureAction.b() == this.type;
    }
}
