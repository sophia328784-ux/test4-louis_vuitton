package androidx.navigation;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.util.Xml;
import androidx.core.os.BundleKt;
import androidx.navigation.internal.NavDestinationImpl;
import com.networkbench.nbslens.nbsnativecrashlib.n;
import defpackage.fc;
import defpackage.md;
import java.io.IOException;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.collections.MapsKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.text.StringsKt;
import org.squirrelframework.foundation.fsm.MvelScriptManager;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001:\u0001\bB\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\t"}, d2 = {"Landroidx/navigation/NavInflater;", "", "Landroid/content/Context;", MvelScriptManager.VAR_CONTEXT, "Landroidx/navigation/NavigatorProvider;", "navigatorProvider", "<init>", "(Landroid/content/Context;Landroidx/navigation/NavigatorProvider;)V", "Companion", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class NavInflater {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Companion f18171c = new Companion(null);
    public static final ThreadLocal d = new ThreadLocal();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f18172a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final NavigatorProvider f18173b;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004R\u0014\u0010\u0005\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0004R\u0014\u0010\u0006\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0006\u0010\u0004R\u0014\u0010\u0007\u001a\u00020\u00028\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0007\u0010\u0004R\u0014\u0010\b\u001a\u00020\u00028\u0006X\u0087T¢\u0006\u0006\n\u0004\b\b\u0010\u0004R\u001a\u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Landroidx/navigation/NavInflater$Companion;", "", "", "TAG_ARGUMENT", "Ljava/lang/String;", "TAG_DEEP_LINK", "TAG_ACTION", "TAG_INCLUDE", "APPLICATION_ID_PLACEHOLDER", "Ljava/lang/ThreadLocal;", "Landroid/util/TypedValue;", "sTmpValue", "Ljava/lang/ThreadLocal;", "navigation-runtime_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
        }

        public static NavType a(TypedValue typedValue, NavType navType, NavType navType2, String str, String str2) throws XmlPullParserException {
            navType2.getClass();
            if (navType == null || navType == navType2) {
                return navType == null ? navType2 : navType;
            }
            StringBuilder sbS = fc.s("Type is ", str, " but found ", str2, ": ");
            sbS.append(typedValue.data);
            throw new XmlPullParserException(sbS.toString());
        }
    }

    public NavInflater(Context context, NavigatorProvider navigatorProvider) {
        context.getClass();
        navigatorProvider.getClass();
        this.f18172a = context;
        this.f18173b = navigatorProvider;
    }

    public static NavArgument c(TypedArray typedArray, Resources resources, int i2) throws XmlPullParserException {
        NavType navTypeA;
        NavType navType;
        int iValueOf;
        NavArgument.Builder builder = new NavArgument.Builder();
        builder.f18107b = typedArray.getBoolean(3, false);
        ThreadLocal threadLocal = d;
        TypedValue typedValue = (TypedValue) threadLocal.get();
        if (typedValue == null) {
            typedValue = new TypedValue();
            threadLocal.set(typedValue);
        }
        String string = typedArray.getString(2);
        Object objH = null;
        if (string != null) {
            NavType.Companion companion = NavType.f18196b;
            String resourcePackageName = resources.getResourcePackageName(i2);
            if (string.startsWith(n.f38805h)) {
                try {
                    String strConcat = "j$".concat(string.substring(4));
                    companion.getClass();
                    navTypeA = NavType.Companion.a(strConcat, resourcePackageName);
                } catch (RuntimeException e2) {
                    if (!(e2.getCause() instanceof ClassNotFoundException)) {
                        throw e2;
                    }
                    companion.getClass();
                    navTypeA = NavType.Companion.a(string, resourcePackageName);
                }
            } else {
                companion.getClass();
                navTypeA = NavType.Companion.a(string, resourcePackageName);
            }
        } else {
            navTypeA = null;
        }
        if (typedArray.getValue(1, typedValue)) {
            NavType$Companion$ReferenceType$1 navType$Companion$ReferenceType$1 = NavType.d;
            int i3 = typedValue.resourceId;
            if (navTypeA == navType$Companion$ReferenceType$1) {
                if (i3 != 0) {
                    iValueOf = Integer.valueOf(i3);
                } else {
                    if (typedValue.type != 16 || typedValue.data != 0) {
                        StringBuilder sb = new StringBuilder("unsupported value '");
                        sb.append((Object) typedValue.string);
                        String strB = navTypeA.b();
                        sb.append("' for ");
                        sb.append(strB);
                        sb.append(". Must be a reference to a resource.");
                        throw new XmlPullParserException(sb.toString());
                    }
                    iValueOf = 0;
                }
            } else if (i3 != 0) {
                if (navTypeA != null) {
                    StringBuilder sb2 = new StringBuilder("unsupported value '");
                    sb2.append((Object) typedValue.string);
                    String strB2 = navTypeA.b();
                    navType$Companion$ReferenceType$1.getClass();
                    sb2.append("' for ");
                    sb2.append(strB2);
                    sb2.append(". You must use a \"reference\" type to reference other resources.");
                    throw new XmlPullParserException(sb2.toString());
                }
                iValueOf = Integer.valueOf(i3);
                navTypeA = navType$Companion$ReferenceType$1;
            } else if (navTypeA == NavType.p) {
                objH = typedArray.getString(1);
            } else {
                int i4 = typedValue.type;
                if (i4 != 3) {
                    Companion companion2 = f18171c;
                    if (i4 == 4) {
                        FloatNavType floatNavType = NavType.f18202j;
                        companion2.getClass();
                        navTypeA = Companion.a(typedValue, navTypeA, floatNavType, string, "float");
                        objH = Float.valueOf(typedValue.getFloat());
                    } else if (i4 == 5) {
                        IntNavType intNavType = NavType.f18197c;
                        companion2.getClass();
                        navTypeA = Companion.a(typedValue, navTypeA, intNavType, string, "dimension");
                        objH = Integer.valueOf((int) typedValue.getDimension(resources.getDisplayMetrics()));
                    } else if (i4 == 18) {
                        BoolNavType boolNavType = NavType.m;
                        companion2.getClass();
                        navTypeA = Companion.a(typedValue, navTypeA, boolNavType, string, "boolean");
                        objH = Boolean.valueOf(typedValue.data != 0);
                    } else {
                        if (i4 < 16 || i4 > 31) {
                            throw new XmlPullParserException("unsupported argument type " + typedValue.type);
                        }
                        FloatNavType floatNavType2 = NavType.f18202j;
                        if (navTypeA == floatNavType2) {
                            companion2.getClass();
                            navTypeA = Companion.a(typedValue, navTypeA, floatNavType2, string, "float");
                            objH = Float.valueOf(typedValue.data);
                        } else {
                            IntNavType intNavType2 = NavType.f18197c;
                            companion2.getClass();
                            navTypeA = Companion.a(typedValue, navTypeA, intNavType2, string, "integer");
                            objH = Integer.valueOf(typedValue.data);
                        }
                    }
                } else {
                    String string2 = typedValue.string.toString();
                    if (navTypeA == null) {
                        NavType.f18196b.getClass();
                        string2.getClass();
                        try {
                            try {
                                try {
                                    try {
                                        navType = NavType.f18197c;
                                        navType.h(string2);
                                    } catch (IllegalArgumentException unused) {
                                        navType = NavType.f18202j;
                                        navType.h(string2);
                                    }
                                } catch (IllegalArgumentException unused2) {
                                    navType = NavType.p;
                                    navType.getClass();
                                }
                            } catch (IllegalArgumentException unused3) {
                                navType = NavType.g;
                                navType.h(string2);
                            }
                        } catch (IllegalArgumentException unused4) {
                            navType = NavType.m;
                            navType.h(string2);
                        }
                        navTypeA = navType;
                    }
                    objH = navTypeA.h(string2);
                }
            }
            objH = iValueOf;
        }
        if (objH != null) {
            builder.f18108c = objH;
            builder.d = true;
        }
        if (navTypeA != null) {
            builder.f18106a = navTypeA;
        }
        return builder.a();
    }

    public final NavDestination a(Resources resources, XmlResourceParser xmlResourceParser, AttributeSet attributeSet, int i2) throws XmlPullParserException, IOException {
        int depth;
        Context context;
        int i3;
        int depth2;
        Object obj;
        int i4 = i2;
        String name = xmlResourceParser.getName();
        name.getClass();
        NavDestination navDestinationA = this.f18173b.c(name).a();
        Context context2 = this.f18172a;
        navDestinationA.m(context2, attributeSet);
        int i5 = 1;
        int depth3 = xmlResourceParser.getDepth() + 1;
        while (true) {
            int next = xmlResourceParser.next();
            if (next == i5 || ((depth = xmlResourceParser.getDepth()) < depth3 && next == 3)) {
                break;
            }
            if (next == 2 && depth <= depth3) {
                String name2 = xmlResourceParser.getName();
                boolean zEquals = "argument".equals(name2);
                int[] iArr = androidx.navigation.common.R$styleable.f18222b;
                if (zEquals) {
                    TypedArray typedArrayObtainAttributes = resources.obtainAttributes(attributeSet, iArr);
                    typedArrayObtainAttributes.getClass();
                    String string = typedArrayObtainAttributes.getString(0);
                    if (string == null) {
                        throw new XmlPullParserException("Arguments must have a name");
                    }
                    NavArgument navArgumentC = c(typedArrayObtainAttributes, resources, i4);
                    NavDestinationImpl navDestinationImpl = navDestinationA.f18152c;
                    navDestinationImpl.getClass();
                    navDestinationImpl.d.put(string, navArgumentC);
                    typedArrayObtainAttributes.recycle();
                } else if ("deepLink".equals(name2)) {
                    TypedArray typedArrayObtainAttributes2 = resources.obtainAttributes(attributeSet, androidx.navigation.common.R$styleable.f18223c);
                    typedArrayObtainAttributes2.getClass();
                    String string2 = typedArrayObtainAttributes2.getString(3);
                    String string3 = typedArrayObtainAttributes2.getString(i5);
                    String string4 = typedArrayObtainAttributes2.getString(2);
                    if ((string2 == null || string2.length() == 0) && ((string3 == null || string3.length() == 0) && (string4 == null || string4.length() == 0))) {
                        throw new XmlPullParserException("Every <deepLink> must include at least one of app:uri, app:action, or app:mimeType");
                    }
                    NavDeepLink.Builder builder = new NavDeepLink.Builder();
                    if (string2 != null) {
                        String packageName = context2.getPackageName();
                        packageName.getClass();
                        builder.f18140a = StringsKt.J(string2, "${applicationId}", packageName);
                    }
                    if (string3 != null && string3.length() != 0) {
                        String packageName2 = context2.getPackageName();
                        packageName2.getClass();
                        String strJ = StringsKt.J(string3, "${applicationId}", packageName2);
                        if (strJ.length() <= 0) {
                            md.n("The NavDeepLink cannot have an empty action.");
                            return null;
                        }
                        builder.f18141b = strJ;
                    }
                    if (string4 != null) {
                        String packageName3 = context2.getPackageName();
                        packageName3.getClass();
                        builder.f18142c = StringsKt.J(string4, "${applicationId}", packageName3);
                    }
                    navDestinationA.a(new NavDeepLink(builder.f18140a, builder.f18141b, builder.f18142c));
                    typedArrayObtainAttributes2.recycle();
                } else {
                    if ("action".equals(name2)) {
                        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, androidx.navigation.common.R$styleable.f18221a, 0, 0);
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(0, 0);
                        NavAction navAction = new NavAction(typedArrayObtainStyledAttributes.getResourceId(i5, 0), null, null, 6, null);
                        int i6 = i5;
                        NavOptions.Builder builder2 = new NavOptions.Builder();
                        builder2.f18183a = typedArrayObtainStyledAttributes.getBoolean(4, false);
                        builder2.f18184b = typedArrayObtainStyledAttributes.getBoolean(10, false);
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(7, -1);
                        context = context2;
                        boolean z = typedArrayObtainStyledAttributes.getBoolean(8, false);
                        i3 = depth3;
                        boolean z2 = typedArrayObtainStyledAttributes.getBoolean(9, false);
                        builder2.f18185c = resourceId2;
                        builder2.f18186e = z;
                        builder2.f18187f = z2;
                        builder2.g = typedArrayObtainStyledAttributes.getResourceId(2, -1);
                        builder2.f18188h = typedArrayObtainStyledAttributes.getResourceId(3, -1);
                        builder2.f18189i = typedArrayObtainStyledAttributes.getResourceId(5, -1);
                        builder2.f18190j = typedArrayObtainStyledAttributes.getResourceId(6, -1);
                        navAction.f18100b = builder2.a();
                        MapsKt.c();
                        Bundle bundleA = BundleKt.a((Pair[]) Arrays.copyOf(new Pair[0], 0));
                        int depth4 = xmlResourceParser.getDepth() + 1;
                        while (true) {
                            int next2 = xmlResourceParser.next();
                            if (next2 == i6 || ((depth2 = xmlResourceParser.getDepth()) < depth4 && next2 == 3)) {
                                break;
                            }
                            if (next2 == 2 && depth2 <= depth4) {
                                if ("argument".equals(xmlResourceParser.getName())) {
                                    TypedArray typedArrayObtainAttributes3 = resources.obtainAttributes(attributeSet, iArr);
                                    typedArrayObtainAttributes3.getClass();
                                    String string5 = typedArrayObtainAttributes3.getString(0);
                                    if (string5 == null) {
                                        throw new XmlPullParserException("Arguments must have a name");
                                    }
                                    NavArgument navArgumentC2 = c(typedArrayObtainAttributes3, resources, i4);
                                    boolean z3 = navArgumentC2.f18104c;
                                    if (z3 && z3 && (obj = navArgumentC2.f18105e) != null) {
                                        navArgumentC2.f18102a.e(bundleA, string5, obj);
                                    }
                                    typedArrayObtainAttributes3.recycle();
                                }
                                i4 = i2;
                            }
                            i6 = 1;
                        }
                        if (!bundleA.isEmpty()) {
                            navAction.f18101c = bundleA;
                        }
                        navDestinationA.n(resourceId, navAction);
                        typedArrayObtainStyledAttributes.recycle();
                    } else {
                        context = context2;
                        i3 = depth3;
                        if ("include".equals(name2) && (navDestinationA instanceof NavGraph)) {
                            TypedArray typedArrayObtainAttributes4 = resources.obtainAttributes(attributeSet, R$styleable.f18219c);
                            typedArrayObtainAttributes4.getClass();
                            ((NavGraph) navDestinationA).f18165h.a(b(typedArrayObtainAttributes4.getResourceId(0, 0)));
                            typedArrayObtainAttributes4.recycle();
                        } else if (navDestinationA instanceof NavGraph) {
                            ((NavGraph) navDestinationA).f18165h.a(a(resources, xmlResourceParser, attributeSet, i2));
                        }
                    }
                    i4 = i2;
                    context2 = context;
                    depth3 = i3;
                    i5 = 1;
                }
            }
        }
        return navDestinationA;
    }

    public final NavGraph b(int i2) {
        int next;
        Resources resources = this.f18172a.getResources();
        XmlResourceParser xml = resources.getXml(i2);
        xml.getClass();
        AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
        do {
            try {
                try {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } catch (Exception e2) {
                    throw new RuntimeException("Exception inflating " + resources.getResourceName(i2) + " line " + xml.getLineNumber(), e2);
                }
            } catch (Throwable th) {
                xml.close();
                throw th;
            }
        } while (next != 1);
        if (next != 2) {
            throw new XmlPullParserException("No start tag found");
        }
        String name = xml.getName();
        attributeSetAsAttributeSet.getClass();
        NavDestination navDestinationA = a(resources, xml, attributeSetAsAttributeSet, i2);
        if (navDestinationA instanceof NavGraph) {
            NavGraph navGraph = (NavGraph) navDestinationA;
            xml.close();
            return navGraph;
        }
        throw new IllegalArgumentException(("Root element <" + name + "> did not inflate into a NavGraph").toString());
    }
}
