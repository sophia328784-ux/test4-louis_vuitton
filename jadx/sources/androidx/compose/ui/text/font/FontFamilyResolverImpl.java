package androidx.compose.ui.text.font;

import androidx.compose.ui.text.platform.AndroidTypeface;
import defpackage.a61;
import defpackage.az;
import defpackage.ck;
import defpackage.m21;
import defpackage.md;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.Result;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0001\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006\u0012\b\b\u0002\u0010\t\u001a\u00020\b\u0012\b\b\u0002\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Landroidx/compose/ui/text/font/FontFamilyResolverImpl;", "Landroidx/compose/ui/text/font/FontFamily$Resolver;", "Landroidx/compose/ui/text/font/PlatformFontLoader;", "platformFontLoader", "Landroidx/compose/ui/text/font/PlatformResolveInterceptor;", "platformResolveInterceptor", "Landroidx/compose/ui/text/font/TypefaceRequestCache;", "typefaceRequestCache", "Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;", "fontListFontFamilyTypefaceAdapter", "Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;", "platformFamilyTypefaceAdapter", "<init>", "(Landroidx/compose/ui/text/font/PlatformFontLoader;Landroidx/compose/ui/text/font/PlatformResolveInterceptor;Landroidx/compose/ui/text/font/TypefaceRequestCache;Landroidx/compose/ui/text/font/FontListFontFamilyTypefaceAdapter;Landroidx/compose/ui/text/font/PlatformFontFamilyTypefaceAdapter;)V", "ui-text"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class FontFamilyResolverImpl implements FontFamily.Resolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PlatformFontLoader f10699a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final PlatformResolveInterceptor f10700b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final TypefaceRequestCache f10701c;
    public final FontListFontFamilyTypefaceAdapter d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final PlatformFontFamilyTypefaceAdapter f10702e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final ck f10703f;

    /* JADX WARN: Illegal instructions before constructor call */
    public FontFamilyResolverImpl(PlatformFontLoader platformFontLoader, PlatformResolveInterceptor platformResolveInterceptor, TypefaceRequestCache typefaceRequestCache, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        if ((i2 & 2) != 0) {
            PlatformResolveInterceptor.f10740a.getClass();
            platformResolveInterceptor = PlatformResolveInterceptor.Companion.f10742b;
        }
        this(platformFontLoader, platformResolveInterceptor, (i2 & 4) != 0 ? FontFamilyResolverKt.f10704a : typefaceRequestCache, (i2 & 8) != 0 ? new FontListFontFamilyTypefaceAdapter(FontFamilyResolverKt.f10705b, null, 2, null) : fontListFontFamilyTypefaceAdapter, (i2 & 16) != 0 ? new PlatformFontFamilyTypefaceAdapter() : platformFontFamilyTypefaceAdapter);
    }

    @Override // androidx.compose.ui.text.font.FontFamily.Resolver
    public final TypefaceResult a(FontFamily fontFamily, FontWeight fontWeight, int i2, int i3) {
        PlatformResolveInterceptor platformResolveInterceptor = this.f10700b;
        platformResolveInterceptor.getClass();
        PlatformResolveInterceptor.Companion companion = PlatformResolveInterceptor.f10740a;
        return b(new TypefaceRequest(fontFamily, platformResolveInterceptor.a(fontWeight), i2, i3, this.f10699a.getF10694b(), null));
    }

    public final TypefaceResult b(final TypefaceRequest typefaceRequest) {
        TypefaceRequestCache typefaceRequestCache = this.f10701c;
        Function1 function1 = new Function1() { // from class: androidx.compose.ui.text.font.a
            /* JADX WARN: Code duplicated, block: B:240:0x0448  */
            /* JADX WARN: Code duplicated, block: B:241:0x044b  */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r10v21, types: [kotlin.coroutines.Continuation, kotlin.coroutines.CoroutineContext] */
            /* JADX WARN: Type inference failed for: r10v22, types: [kotlin.jvm.internal.DefaultConstructorMarker] */
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                ArrayList arrayList;
                List list;
                ArrayList arrayList2;
                Pair pair;
                Object async;
                Object objInvoke;
                AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult;
                Object failure;
                Object obj2;
                DefaultConstructorMarker defaultConstructorMarker;
                android.graphics.Typeface typefaceA;
                TypefaceResult.Immutable immutable;
                FontFamilyResolverImpl fontFamilyResolverImpl = this.f10757b;
                TypefaceRequest typefaceRequest2 = typefaceRequest;
                Function1 function2 = (Function1) obj;
                FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter = fontFamilyResolverImpl.d;
                PlatformFontLoader platformFontLoader = fontFamilyResolverImpl.f10699a;
                ck ckVar = fontFamilyResolverImpl.f10703f;
                fontListFontFamilyTypefaceAdapter.getClass();
                FontFamily fontFamily = typefaceRequest2.f10748a;
                if (fontFamily instanceof FontListFontFamily) {
                    FontMatcher fontMatcher = FontListFontFamilyTypefaceAdapter.f10707c;
                    List list2 = ((FontListFontFamily) fontFamily).f10706h;
                    FontWeight fontWeight = typefaceRequest2.f10749b;
                    int i2 = typefaceRequest2.f10750c;
                    fontMatcher.getClass();
                    ArrayList arrayList3 = new ArrayList(list2.size());
                    List list3 = list2;
                    int size = list3.size();
                    for (int i3 = 0; i3 < size; i3++) {
                        Object obj3 = list2.get(i3);
                        Font font = (Font) obj3;
                        if (Intrinsics.c(font.getF10744b(), fontWeight)) {
                            int f10745c = font.getF10745c();
                            FontStyle.Companion companion = FontStyle.f10715b;
                            if (f10745c == i2) {
                                arrayList3.add(obj3);
                            }
                        }
                    }
                    if (arrayList3.isEmpty()) {
                        ArrayList arrayList4 = new ArrayList(list2.size());
                        int size2 = list3.size();
                        for (int i4 = 0; i4 < size2; i4++) {
                            Object obj4 = list2.get(i4);
                            int f10745c2 = ((Font) obj4).getF10745c();
                            FontStyle.Companion companion2 = FontStyle.f10715b;
                            if (f10745c2 == i2) {
                                arrayList4.add(obj4);
                            }
                        }
                        if (!arrayList4.isEmpty()) {
                            list2 = arrayList4;
                        }
                        List list4 = list2;
                        FontWeight.f10727c.getClass();
                        int iCompareTo = fontWeight.compareTo(FontWeight.d);
                        int i5 = fontWeight.f10734b;
                        if (iCompareTo < 0) {
                            List list5 = list4;
                            int size3 = list5.size();
                            int i6 = 0;
                            FontWeight fontWeight2 = null;
                            FontWeight fontWeight3 = null;
                            while (true) {
                                if (i6 >= size3) {
                                    arrayList = null;
                                    break;
                                }
                                FontWeight f10744b = ((Font) list4.get(i6)).getF10744b();
                                int i7 = f10744b.f10734b;
                                if (Intrinsics.d(i7, i5) >= 0) {
                                    arrayList = null;
                                    if (Intrinsics.d(i7, i5) <= 0) {
                                        fontWeight2 = f10744b;
                                        fontWeight3 = fontWeight2;
                                        break;
                                    }
                                    if (fontWeight3 == null || Intrinsics.d(i7, fontWeight3.f10734b) < 0) {
                                        fontWeight3 = f10744b;
                                    }
                                } else if (fontWeight2 == null || Intrinsics.d(i7, fontWeight2.f10734b) > 0) {
                                    fontWeight2 = f10744b;
                                }
                                i6++;
                            }
                            if (fontWeight2 == null) {
                                fontWeight2 = fontWeight3;
                            }
                            arrayList2 = new ArrayList(list4.size());
                            int size4 = list5.size();
                            for (int i8 = 0; i8 < size4; i8++) {
                                Object obj5 = list4.get(i8);
                                if (Intrinsics.c(((Font) obj5).getF10744b(), fontWeight2)) {
                                    arrayList2.add(obj5);
                                }
                            }
                        } else {
                            arrayList = null;
                            FontWeight fontWeight4 = FontWeight.f10728e;
                            if (fontWeight.compareTo(fontWeight4) > 0) {
                                List list6 = list4;
                                int size5 = list6.size();
                                FontWeight fontWeight5 = null;
                                FontWeight fontWeight6 = null;
                                for (int i9 = 0; i9 < size5; i9++) {
                                    FontWeight f10744b2 = ((Font) list4.get(i9)).getF10744b();
                                    int i10 = f10744b2.f10734b;
                                    if (Intrinsics.d(i10, i5) >= 0) {
                                        if (Intrinsics.d(i10, i5) <= 0) {
                                            fontWeight5 = f10744b2;
                                            fontWeight6 = fontWeight5;
                                            break;
                                        }
                                        if (fontWeight6 == null || Intrinsics.d(i10, fontWeight6.f10734b) < 0) {
                                            fontWeight6 = f10744b2;
                                        }
                                    } else if (fontWeight5 == null || Intrinsics.d(i10, fontWeight5.f10734b) > 0) {
                                        fontWeight5 = f10744b2;
                                    }
                                }
                                if (fontWeight6 != null) {
                                    fontWeight5 = fontWeight6;
                                }
                                arrayList2 = new ArrayList(list4.size());
                                int size6 = list6.size();
                                for (int i11 = 0; i11 < size6; i11++) {
                                    Object obj6 = list4.get(i11);
                                    if (Intrinsics.c(((Font) obj6).getF10744b(), fontWeight5)) {
                                        arrayList2.add(obj6);
                                    }
                                }
                            } else {
                                List list7 = list4;
                                int size7 = list7.size();
                                int i12 = 0;
                                FontWeight fontWeight7 = null;
                                FontWeight fontWeight8 = null;
                                while (true) {
                                    if (i12 >= size7) {
                                        list = list7;
                                        break;
                                    }
                                    FontWeight f10744b3 = ((Font) list4.get(i12)).getF10744b();
                                    list = list7;
                                    if (Intrinsics.d(f10744b3.f10734b, fontWeight4.f10734b) <= 0) {
                                        int i13 = f10744b3.f10734b;
                                        if (Intrinsics.d(i13, i5) >= 0) {
                                            if (Intrinsics.d(i13, i5) <= 0) {
                                                fontWeight7 = f10744b3;
                                                fontWeight8 = fontWeight7;
                                                break;
                                            }
                                            if (fontWeight8 == null || Intrinsics.d(i13, fontWeight8.f10734b) < 0) {
                                                fontWeight8 = f10744b3;
                                            }
                                        } else if (fontWeight7 == null || Intrinsics.d(i13, fontWeight7.f10734b) > 0) {
                                            fontWeight7 = f10744b3;
                                        }
                                    }
                                    i12++;
                                    list7 = list;
                                }
                                if (fontWeight8 != null) {
                                    fontWeight7 = fontWeight8;
                                }
                                arrayList3 = new ArrayList(list4.size());
                                int size8 = list.size();
                                for (int i14 = 0; i14 < size8; i14++) {
                                    Object obj7 = list4.get(i14);
                                    if (Intrinsics.c(((Font) obj7).getF10744b(), fontWeight7)) {
                                        arrayList3.add(obj7);
                                    }
                                }
                                if (arrayList3.isEmpty()) {
                                    FontWeight.f10727c.getClass();
                                    FontWeight fontWeight9 = FontWeight.f10728e;
                                    int size9 = list.size();
                                    FontWeight fontWeight10 = null;
                                    FontWeight fontWeight11 = null;
                                    for (int i15 = 0; i15 < size9; i15++) {
                                        FontWeight f10744b4 = ((Font) list4.get(i15)).getF10744b();
                                        if (fontWeight9 == null || Intrinsics.d(f10744b4.f10734b, fontWeight9.f10734b) >= 0) {
                                            int i16 = f10744b4.f10734b;
                                            if (Intrinsics.d(i16, i5) >= 0) {
                                                if (Intrinsics.d(i16, i5) <= 0) {
                                                    fontWeight10 = f10744b4;
                                                    fontWeight11 = fontWeight10;
                                                    break;
                                                }
                                                if (fontWeight11 == null || Intrinsics.d(i16, fontWeight11.f10734b) < 0) {
                                                    fontWeight11 = f10744b4;
                                                }
                                            } else if (fontWeight10 == null || Intrinsics.d(i16, fontWeight10.f10734b) > 0) {
                                                fontWeight10 = f10744b4;
                                            }
                                        }
                                    }
                                    if (fontWeight11 != null) {
                                        fontWeight10 = fontWeight11;
                                    }
                                    arrayList3 = new ArrayList(list4.size());
                                    int size10 = list.size();
                                    for (int i17 = 0; i17 < size10; i17++) {
                                        Object obj8 = list4.get(i17);
                                        if (Intrinsics.c(((Font) obj8).getF10744b(), fontWeight10)) {
                                            arrayList3.add(obj8);
                                        }
                                    }
                                }
                            }
                        }
                        arrayList3 = arrayList2;
                    } else {
                        arrayList = null;
                    }
                    AsyncTypefaceCache asyncTypefaceCache = fontListFontFamilyTypefaceAdapter.f10708a;
                    int size11 = arrayList3.size();
                    int i18 = 0;
                    ArrayList arrayListU = arrayList;
                    while (true) {
                        if (i18 >= size11) {
                            pair = new Pair(arrayListU, ckVar.invoke(typefaceRequest2));
                            break;
                        }
                        Font font2 = (Font) arrayList3.get(i18);
                        int f10658a = font2.getF10658a();
                        FontLoadingStrategy.f10712a.getClass();
                        if (f10658a == 0) {
                            synchronized (asyncTypefaceCache.f10686c) {
                                try {
                                    AsyncTypefaceCache.Key key = new AsyncTypefaceCache.Key(font2, platformFontLoader.getF10694b());
                                    AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.f10684a.b(key);
                                    if (asyncTypefaceResult2 == null) {
                                        asyncTypefaceResult2 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.f10685b.e(key);
                                    }
                                    if (asyncTypefaceResult2 != null) {
                                        objInvoke = asyncTypefaceResult2.f10687a;
                                    } else {
                                        try {
                                            objInvoke = platformFontLoader.a(font2);
                                        } catch (Exception unused) {
                                            objInvoke = ckVar.invoke(typefaceRequest2);
                                        }
                                        AsyncTypefaceCache.a(asyncTypefaceCache, font2, platformFontLoader, objInvoke);
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            if (objInvoke == null) {
                                objInvoke = ckVar.invoke(typefaceRequest2);
                            }
                            pair = new Pair(arrayListU, FontSynthesis_androidKt.a(typefaceRequest2.d, objInvoke, font2, typefaceRequest2.f10749b, typefaceRequest2.f10750c));
                            break;
                        }
                        if (f10658a == FontLoadingStrategy.f10713b) {
                            synchronized (asyncTypefaceCache.f10686c) {
                                try {
                                    AsyncTypefaceCache.Key key2 = new AsyncTypefaceCache.Key(font2, platformFontLoader.getF10694b());
                                    AsyncTypefaceCache.AsyncTypefaceResult asyncTypefaceResult3 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.f10684a.b(key2);
                                    if (asyncTypefaceResult3 == null) {
                                        asyncTypefaceResult3 = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.f10685b.e(key2);
                                    }
                                    if (asyncTypefaceResult3 != null) {
                                        obj2 = asyncTypefaceResult3.f10687a;
                                    } else {
                                        try {
                                            Result.Companion companion3 = Result.INSTANCE;
                                            failure = platformFontLoader.a(font2);
                                        } catch (Throwable th2) {
                                            Result.Companion companion4 = Result.INSTANCE;
                                            failure = new Result.Failure(th2);
                                        }
                                        if (failure instanceof Result.Failure) {
                                            failure = arrayList;
                                        }
                                        AsyncTypefaceCache.a(asyncTypefaceCache, font2, platformFontLoader, failure);
                                        obj2 = failure;
                                    }
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                            if (obj2 != null) {
                                pair = new Pair(arrayListU, FontSynthesis_androidKt.a(typefaceRequest2.d, obj2, font2, typefaceRequest2.f10749b, typefaceRequest2.f10750c));
                                break;
                            }
                            i18++;
                        } else {
                            if (f10658a != FontLoadingStrategy.f10714c) {
                                a61.q(font2, "Unknown font type ");
                                return arrayList;
                            }
                            asyncTypefaceCache.getClass();
                            AsyncTypefaceCache.Key key3 = new AsyncTypefaceCache.Key(font2, platformFontLoader.getF10694b());
                            synchronized (asyncTypefaceCache.f10686c) {
                                asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.f10684a.b(key3);
                                if (asyncTypefaceResult == null) {
                                    asyncTypefaceResult = (AsyncTypefaceCache.AsyncTypefaceResult) asyncTypefaceCache.f10685b.e(key3);
                                }
                            }
                            if (asyncTypefaceResult != null) {
                                Object obj9 = asyncTypefaceResult.f10687a;
                                if (obj9 != null) {
                                    pair = new Pair(arrayListU, FontSynthesis_androidKt.a(typefaceRequest2.d, obj9, font2, typefaceRequest2.f10749b, typefaceRequest2.f10750c));
                                    break;
                                }
                            } else if (arrayListU == null) {
                                arrayListU = CollectionsKt.U(font2);
                            } else {
                                arrayListU.add(font2);
                            }
                            i18++;
                        }
                    }
                    List list8 = (List) pair.f71705b;
                    Object obj10 = pair.f71706c;
                    if (list8 == null) {
                        async = new TypefaceResult.Immutable(obj10, false, 2, arrayList);
                    } else {
                        ?? r10 = arrayList;
                        AsyncFontListLoader asyncFontListLoader = new AsyncFontListLoader(list8, obj10, typefaceRequest2, fontListFontFamilyTypefaceAdapter.f10708a, function2, platformFontLoader);
                        BuildersKt.c(fontListFontFamilyTypefaceAdapter.f10709b, r10, CoroutineStart.UNDISPATCHED, new FontListFontFamilyTypefaceAdapter$resolve$1(asyncFontListLoader, r10), 1);
                        async = new TypefaceResult.Async(asyncFontListLoader);
                    }
                } else {
                    async = null;
                }
                if (async != null) {
                    return async;
                }
                PlatformTypefaces platformTypefaces = fontFamilyResolverImpl.f10702e.f10739a;
                FontFamily fontFamily2 = typefaceRequest2.f10748a;
                int i19 = typefaceRequest2.f10750c;
                FontWeight fontWeight12 = typefaceRequest2.f10749b;
                if (fontFamily2 == null || (fontFamily2 instanceof DefaultFontFamily)) {
                    ((PlatformTypefacesApi28) platformTypefaces).getClass();
                    defaultConstructorMarker = null;
                    typefaceA = PlatformTypefacesApi28.a(null, fontWeight12, i19);
                } else {
                    if (!(fontFamily2 instanceof GenericFontFamily)) {
                        if (fontFamily2 instanceof LoadedFontFamily) {
                            Typeface typeface = ((LoadedFontFamily) fontFamily2).f10738h;
                            typeface.getClass();
                            typefaceA = ((AndroidTypeface) typeface).getF10894a();
                        } else {
                            defaultConstructorMarker = null;
                            immutable = null;
                        }
                        if (immutable != null) {
                            return immutable;
                        }
                        md.k("Could not load font");
                        return defaultConstructorMarker;
                    }
                    ((PlatformTypefacesApi28) platformTypefaces).getClass();
                    typefaceA = PlatformTypefacesApi28.a(((GenericFontFamily) fontFamily2).f10736h, fontWeight12, i19);
                    defaultConstructorMarker = null;
                }
                immutable = new TypefaceResult.Immutable(typefaceA, false, 2, defaultConstructorMarker);
                if (immutable != null) {
                    return immutable;
                }
                md.k("Could not load font");
                return defaultConstructorMarker;
            }
        };
        synchronized (typefaceRequestCache.f10752a) {
            TypefaceResult typefaceResult = (TypefaceResult) typefaceRequestCache.f10753b.b(typefaceRequest);
            if (typefaceResult != null) {
                if (typefaceResult.getF10756c()) {
                    return typefaceResult;
                }
            }
            try {
                TypefaceResult typefaceResult2 = (TypefaceResult) function1.invoke(new m21(typefaceRequestCache, typefaceRequest, 25));
                synchronized (typefaceRequestCache.f10752a) {
                    if (typefaceRequestCache.f10753b.b(typefaceRequest) == null && typefaceResult2.getF10756c()) {
                        typefaceRequestCache.f10753b.c(typefaceRequest, typefaceResult2);
                    }
                }
                return typefaceResult2;
            } catch (Exception e2) {
                az.s("Could not load font", e2);
                return null;
            }
        }
    }

    public FontFamilyResolverImpl(PlatformFontLoader platformFontLoader, PlatformResolveInterceptor platformResolveInterceptor, TypefaceRequestCache typefaceRequestCache, FontListFontFamilyTypefaceAdapter fontListFontFamilyTypefaceAdapter, PlatformFontFamilyTypefaceAdapter platformFontFamilyTypefaceAdapter) {
        this.f10699a = platformFontLoader;
        this.f10700b = platformResolveInterceptor;
        this.f10701c = typefaceRequestCache;
        this.d = fontListFontFamilyTypefaceAdapter;
        this.f10702e = platformFontFamilyTypefaceAdapter;
        this.f10703f = new ck(this, 28);
    }
}
