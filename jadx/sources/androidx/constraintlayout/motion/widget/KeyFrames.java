package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.util.Xml;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
public class KeyFrames {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final HashMap f11582b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final HashMap f11583a = new HashMap();

    static {
        HashMap map = new HashMap();
        f11582b = map;
        try {
            map.put("KeyAttribute", KeyAttributes.class.getConstructor(null));
            map.put("KeyPosition", KeyPosition.class.getConstructor(null));
            map.put("KeyCycle", KeyCycle.class.getConstructor(null));
            map.put("KeyTimeCycle", KeyTimeCycle.class.getConstructor(null));
            map.put("KeyTrigger", KeyTrigger.class.getConstructor(null));
        } catch (NoSuchMethodException unused) {
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    public KeyFrames(Context context, XmlPullParser xmlPullParser) {
        HashMap map;
        HashMap map2;
        Key keyTimeCycle;
        try {
            int eventType = xmlPullParser.getEventType();
            Key key = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    String name = xmlPullParser.getName();
                    if (f11582b.containsKey(name)) {
                        switch (name.hashCode()) {
                            case -300573030:
                                if (!name.equals("KeyTimeCycle")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyTimeCycle();
                                keyTimeCycle.d(context, Xml.asAttributeSet(xmlPullParser));
                                b(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case -298435811:
                                if (!name.equals("KeyAttribute")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyAttributes();
                                keyTimeCycle.d(context, Xml.asAttributeSet(xmlPullParser));
                                b(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case 540053991:
                                if (!name.equals("KeyCycle")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyCycle();
                                keyTimeCycle.d(context, Xml.asAttributeSet(xmlPullParser));
                                b(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case 1153397896:
                                if (!name.equals("KeyPosition")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyPosition();
                                keyTimeCycle.d(context, Xml.asAttributeSet(xmlPullParser));
                                b(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            case 1308496505:
                                if (!name.equals("KeyTrigger")) {
                                    throw new NullPointerException("Key " + name + " not found");
                                }
                                keyTimeCycle = new KeyTrigger();
                                keyTimeCycle.d(context, Xml.asAttributeSet(xmlPullParser));
                                b(keyTimeCycle);
                                key = keyTimeCycle;
                                break;
                                break;
                            default:
                                throw new NullPointerException("Key " + name + " not found");
                        }
                        return;
                    }
                    if (name.equalsIgnoreCase("CustomAttribute")) {
                        if (key != null && (map2 = key.d) != null) {
                            ConstraintAttribute.d(context, xmlPullParser, map2);
                        }
                    } else if (name.equalsIgnoreCase("CustomMethod") && key != null && (map = key.d) != null) {
                        ConstraintAttribute.d(context, xmlPullParser, map);
                    }
                } else if (eventType == 3 && "KeyFrameSet".equals(xmlPullParser.getName())) {
                    return;
                }
                eventType = xmlPullParser.next();
            }
        } catch (IOException | XmlPullParserException unused) {
        }
    }

    public final void a(MotionController motionController) {
        ArrayList arrayList = motionController.w;
        Integer numValueOf = Integer.valueOf(motionController.f11615c);
        HashMap map = this.f11583a;
        ArrayList arrayList2 = (ArrayList) map.get(numValueOf);
        if (arrayList2 != null) {
            arrayList.addAll(arrayList2);
        }
        ArrayList<Key> arrayList3 = (ArrayList) map.get(-1);
        if (arrayList3 != null) {
            for (Key key : arrayList3) {
                String str = ((ConstraintLayout.LayoutParams) motionController.f11614b.getLayoutParams()).Y;
                String str2 = key.f11567c;
                if ((str2 == null || str == null) ? false : str.matches(str2)) {
                    arrayList.add(key);
                }
            }
        }
    }

    public final void b(Key key) {
        Integer numValueOf = Integer.valueOf(key.f11566b);
        HashMap map = this.f11583a;
        if (!map.containsKey(numValueOf)) {
            map.put(Integer.valueOf(key.f11566b), new ArrayList());
        }
        ArrayList arrayList = (ArrayList) map.get(Integer.valueOf(key.f11566b));
        if (arrayList != null) {
            arrayList.add(key);
        }
    }

    public KeyFrames() {
    }
}
