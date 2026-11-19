package androidx.navigation;

import defpackage.b21;
import defpackage.fc;
import defpackage.lc0;
import defpackage.md;
import defpackage.wp;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\b\u0017\u0018\u00002\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Landroidx/navigation/NavigatorProvider;", "", "<init>", "()V", "Companion", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public class NavigatorProvider {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Companion f18207b = new Companion(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final LinkedHashMap f18208c = new LinkedHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f18209a = new LinkedHashMap();

    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0080\u0003\u0018\u00002\u00020\u0001R&\u0010\u0005\u001a\u0014\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/navigation/NavigatorProvider$Companion;", "", "", "Ljava/lang/Class;", "", "annotationNames", "Ljava/util/Map;", "navigation-common_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static String a(Class cls) {
            LinkedHashMap linkedHashMap = NavigatorProvider.f18208c;
            String strValue = (String) linkedHashMap.get(cls);
            if (strValue == null) {
                Navigator.Name name = (Navigator.Name) cls.getAnnotation(Navigator.Name.class);
                strValue = name != null ? name.value() : null;
                if (strValue == null || strValue.length() <= 0) {
                    b21.n("No @Navigator.Name annotation found for ".concat(cls.getSimpleName()));
                    return null;
                }
                linkedHashMap.put(cls, strValue);
            }
            strValue.getClass();
            return strValue;
        }
    }

    public final void a(Navigator navigator) {
        navigator.getClass();
        Class<?> cls = navigator.getClass();
        f18207b.getClass();
        String strA = Companion.a(cls);
        if (strA.length() <= 0) {
            md.n("navigator name cannot be an empty string");
            return;
        }
        LinkedHashMap linkedHashMap = this.f18209a;
        Navigator navigator2 = (Navigator) linkedHashMap.get(strA);
        if (Intrinsics.c(navigator2, navigator)) {
            return;
        }
        if (navigator2 != null && navigator2.f18206b) {
            lc0.o("Navigator ", navigator, " is replacing an already attached ", navigator2);
        } else if (navigator.f18206b) {
            wp.e("Navigator ", navigator, " is already attached to another NavController");
        }
    }

    public final Navigator b(Class cls) {
        f18207b.getClass();
        return c(Companion.a(cls));
    }

    public final Navigator c(String str) {
        str.getClass();
        f18207b.getClass();
        if (str.length() <= 0) {
            md.n("navigator name cannot be an empty string");
            return null;
        }
        Navigator navigator = (Navigator) this.f18209a.get(str);
        if (navigator != null) {
            return navigator;
        }
        md.k(fc.h("Could not find Navigator with name \"", str, "\". You must call NavController.addNavigator() for each navigation type."));
        return null;
    }
}
