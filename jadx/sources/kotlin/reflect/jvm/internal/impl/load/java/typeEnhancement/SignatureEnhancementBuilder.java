package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import defpackage.w1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.IndexingIterable;
import kotlin.collections.IndexingIterator;
import kotlin.collections.MapsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.ReturnValueStatus;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes4.dex */
final class SignatureEnhancementBuilder {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final LinkedHashMap f73178a = new LinkedHashMap();

    public final class ClassEnhancementBuilder {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f73179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ SignatureEnhancementBuilder f73180b;

        public final class FunctionEnhancementBuilder {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public final String f73181a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73182b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final ArrayList f73183c;
            public Pair d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            public ReturnValueStatus f73184e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            public final /* synthetic */ ClassEnhancementBuilder f73185f;

            public FunctionEnhancementBuilder(ClassEnhancementBuilder classEnhancementBuilder, String str, String str2) {
                str.getClass();
                this.f73185f = classEnhancementBuilder;
                this.f73181a = str;
                this.f73182b = str2;
                this.f73183c = new ArrayList();
                this.d = new Pair("V", null);
            }

            public final void a(String str, JavaTypeQualifiers... javaTypeQualifiersArr) {
                TypeEnhancementInfo typeEnhancementInfo;
                str.getClass();
                if (javaTypeQualifiersArr.length == 0) {
                    typeEnhancementInfo = null;
                } else {
                    IndexingIterable indexingIterable = new IndexingIterable(new w1(javaTypeQualifiersArr, 8));
                    int iG = MapsKt.g(CollectionsKt.t(indexingIterable, 10));
                    if (iG < 16) {
                        iG = 16;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                    Iterator it = indexingIterable.iterator();
                    while (true) {
                        IndexingIterator indexingIterator = (IndexingIterator) it;
                        if (!indexingIterator.f71774b.hasNext()) {
                            break;
                        }
                        IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                        linkedHashMap.put(Integer.valueOf(indexedValue.f71771a), (JavaTypeQualifiers) indexedValue.f71772b);
                    }
                    typeEnhancementInfo = new TypeEnhancementInfo(linkedHashMap);
                }
                this.f73183c.add(new Pair(str, typeEnhancementInfo));
            }

            public final void b(String str, JavaTypeQualifiers... javaTypeQualifiersArr) {
                str.getClass();
                IndexingIterable indexingIterable = new IndexingIterable(new w1(javaTypeQualifiersArr, 8));
                int iG = MapsKt.g(CollectionsKt.t(indexingIterable, 10));
                if (iG < 16) {
                    iG = 16;
                }
                LinkedHashMap linkedHashMap = new LinkedHashMap(iG);
                Iterator it = indexingIterable.iterator();
                while (true) {
                    IndexingIterator indexingIterator = (IndexingIterator) it;
                    if (!indexingIterator.f71774b.hasNext()) {
                        this.d = new Pair(str, new TypeEnhancementInfo(linkedHashMap));
                        return;
                    } else {
                        IndexedValue indexedValue = (IndexedValue) indexingIterator.next();
                        linkedHashMap.put(Integer.valueOf(indexedValue.f71771a), (JavaTypeQualifiers) indexedValue.f71772b);
                    }
                }
            }

            public final void c(JvmPrimitiveType jvmPrimitiveType) {
                jvmPrimitiveType.getClass();
                String strD = jvmPrimitiveType.d();
                strD.getClass();
                this.d = new Pair(strD, null);
            }
        }

        public ClassEnhancementBuilder(SignatureEnhancementBuilder signatureEnhancementBuilder, String str) {
            str.getClass();
            this.f73180b = signatureEnhancementBuilder;
            this.f73179a = str;
        }

        public final void a(String str, String str2, Function1 function1) {
            LinkedHashMap linkedHashMap = this.f73180b.f73178a;
            FunctionEnhancementBuilder functionEnhancementBuilder = new FunctionEnhancementBuilder(this, str, str2);
            function1.invoke(functionEnhancementBuilder);
            String str3 = functionEnhancementBuilder.f73185f.f73179a;
            ArrayList arrayList = functionEnhancementBuilder.f73183c;
            ArrayList arrayList2 = new ArrayList(CollectionsKt.t(arrayList, 10));
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                arrayList2.add((String) ((Pair) it.next()).f71705b);
            }
            String strF = SignatureBuildingComponents.f(str3, SignatureBuildingComponents.e(functionEnhancementBuilder.f73181a, (String) functionEnhancementBuilder.d.f71705b, arrayList2));
            TypeEnhancementInfo typeEnhancementInfo = (TypeEnhancementInfo) functionEnhancementBuilder.d.f71706c;
            ArrayList arrayList3 = new ArrayList(CollectionsKt.t(arrayList, 10));
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                arrayList3.add((TypeEnhancementInfo) ((Pair) it2.next()).f71706c);
            }
            Pair pair = new Pair(strF, new PredefinedFunctionEnhancementInfo(typeEnhancementInfo, arrayList3, functionEnhancementBuilder.f73182b, functionEnhancementBuilder.f73184e));
            linkedHashMap.put(pair.f71705b, pair.f71706c);
        }
    }
}
