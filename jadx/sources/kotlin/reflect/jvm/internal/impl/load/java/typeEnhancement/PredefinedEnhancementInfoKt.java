package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import com.sightcall.universal.fcm.messages.Test;
import java.util.LinkedHashMap;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.resolve.ReturnValueStatus;
import kotlin.reflect.jvm.internal.impl.resolve.jvm.JvmPrimitiveType;

/* JADX INFO: loaded from: classes4.dex */
public abstract class PredefinedEnhancementInfoKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JavaTypeQualifiers f73116a = new JavaTypeQualifiers(NullabilityQualifier.NULLABLE, null, false, false, 8, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final JavaTypeQualifiers f73117b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final JavaTypeQualifiers f73118c;
    public static final LinkedHashMap d;

    static {
        NullabilityQualifier nullabilityQualifier = NullabilityQualifier.NOT_NULL;
        f73117b = new JavaTypeQualifiers(nullabilityQualifier, null, false, false, 8, null);
        f73118c = new JavaTypeQualifiers(nullabilityQualifier, null, true, false, 8, null);
        final String strConcat = "java/lang/".concat("Object");
        final String strConcat2 = "java/util/function/".concat("Predicate");
        final String strConcat3 = "java/util/function/".concat("Function");
        final String strConcat4 = "java/util/function/".concat("Consumer");
        final String strConcat5 = "java/util/function/".concat("BiFunction");
        final String strConcat6 = "java/util/function/".concat("BiConsumer");
        final String strConcat7 = "java/util/function/".concat("UnaryOperator");
        final String strConcat8 = "java/util/".concat("stream/Stream");
        final String strConcat9 = "java/util/".concat("Optional");
        SignatureEnhancementBuilder signatureEnhancementBuilder = new SignatureEnhancementBuilder();
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("Iterator")).a("forEachRemaining", null, new Function1(strConcat4) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$0

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73119b;

            {
                this.f73119b = strConcat4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.a(this.f73119b, javaTypeQualifiers2, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/lang/".concat("Iterable"));
        final SignatureBuildingComponents signatureBuildingComponents = SignatureBuildingComponents.f73262a;
        classEnhancementBuilder.a("spliterator", null, new Function1(signatureBuildingComponents) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$1

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final SignatureBuildingComponents f73120b;

            {
                this.f73120b = signatureBuildingComponents;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                this.f73120b.getClass();
                String strConcat10 = "java/util/".concat("Spliterator");
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.b(strConcat10, javaTypeQualifiers2, javaTypeQualifiers2);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder2 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("Collection"));
        classEnhancementBuilder2.a("removeIf", null, new Function1(strConcat2) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$2

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73131b;

            {
                this.f73131b = strConcat2;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.a(this.f73131b, javaTypeQualifiers2, javaTypeQualifiers2);
                functionEnhancementBuilder.c(JvmPrimitiveType.BOOLEAN);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder2.a("stream", null, new Function1(strConcat8) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$3

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73146b;

            {
                this.f73146b = strConcat8;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.b(this.f73146b, javaTypeQualifiers2, javaTypeQualifiers2);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder2.a("parallelStream", null, new Function1(strConcat8) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$4

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73159b;

            {
                this.f73159b = strConcat8;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.b(this.f73159b, javaTypeQualifiers2, javaTypeQualifiers2);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder3 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("List"));
        classEnhancementBuilder3.a("replaceAll", null, new Function1(strConcat7) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$5

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73164b;

            {
                this.f73164b = strConcat7;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.a(this.f73164b, javaTypeQualifiers2, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder3.a("addFirst", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$6

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73165b;

            {
                this.f73165b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73165b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder3.a("addLast", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$7

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73166b;

            {
                this.f73166b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73166b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder3.a("removeFirst", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$8

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73167b;

            {
                this.f73167b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73167b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder3.a("removeLast", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$9

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73168b;

            {
                this.f73168b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73168b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder4 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("LinkedList"));
        classEnhancementBuilder4.a("addFirst", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$10

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73121b;

            {
                this.f73121b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73121b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder4.a("addLast", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$11

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73122b;

            {
                this.f73122b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73122b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder4.a("removeFirst", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$12

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73123b;

            {
                this.f73123b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73123b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder4.a("removeLast", "2.1", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$13

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73124b;

            {
                this.f73124b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73124b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder5 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("LinkedHashSet"));
        classEnhancementBuilder5.a("addFirst", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$14

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73125b;

            {
                this.f73125b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73125b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder5.a("addLast", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$15

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73126b;

            {
                this.f73126b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73126b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder5.a("removeFirst", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$16

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73127b;

            {
                this.f73127b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73127b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder5.a("removeLast", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$17

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73128b;

            {
                this.f73128b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73128b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder5.a("getFirst", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$18

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73129b;

            {
                this.f73129b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73129b, PredefinedEnhancementInfoKt.f73117b);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder5.a("getLast", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$19

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73130b;

            {
                this.f73130b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73130b, PredefinedEnhancementInfoKt.f73117b);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder6 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("Map"));
        classEnhancementBuilder6.a("forEach", null, new Function1(strConcat6) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$20

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73132b;

            {
                this.f73132b = strConcat6;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.a(this.f73132b, javaTypeQualifiers2, javaTypeQualifiers2, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("putIfAbsent", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$21

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73133b;

            {
                this.f73133b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73133b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, PredefinedEnhancementInfoKt.f73116a);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("replace", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$22

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73134b;

            {
                this.f73134b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73134b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, PredefinedEnhancementInfoKt.f73116a);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("replace", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$23

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73135b;

            {
                this.f73135b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73135b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.c(JvmPrimitiveType.BOOLEAN);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("replaceAll", null, new Function1(strConcat5) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$24

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73136b;

            {
                this.f73136b = strConcat5;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                functionEnhancementBuilder.a(this.f73136b, javaTypeQualifiers2, javaTypeQualifiers2, javaTypeQualifiers2, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("compute", null, new Function1(strConcat, strConcat5) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$25

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73137b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f73138c;

            {
                this.f73137b = strConcat;
                this.f73138c = strConcat5;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73137b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.a(this.f73138c, javaTypeQualifiers2, javaTypeQualifiers2, javaTypeQualifiers3, javaTypeQualifiers3);
                functionEnhancementBuilder.b(str, javaTypeQualifiers3);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("computeIfAbsent", null, new Function1(strConcat, strConcat3) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$26

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73139b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f73140c;

            {
                this.f73139b = strConcat;
                this.f73140c = strConcat3;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73139b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(this.f73140c, javaTypeQualifiers2, javaTypeQualifiers2, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("computeIfPresent", null, new Function1(strConcat, strConcat5) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$27

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73141b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f73142c;

            {
                this.f73141b = strConcat;
                this.f73142c = strConcat5;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73141b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.f73118c;
                JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.a(this.f73142c, javaTypeQualifiers2, javaTypeQualifiers2, javaTypeQualifiers3, javaTypeQualifiers4);
                functionEnhancementBuilder.b(str, javaTypeQualifiers4);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder6.a("merge", null, new Function1(strConcat, strConcat5) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$28

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73143b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f73144c;

            {
                this.f73143b = strConcat;
                this.f73144c = strConcat5;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73143b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                JavaTypeQualifiers javaTypeQualifiers3 = PredefinedEnhancementInfoKt.f73118c;
                functionEnhancementBuilder.a(str, javaTypeQualifiers3);
                JavaTypeQualifiers javaTypeQualifiers4 = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.a(this.f73144c, javaTypeQualifiers2, javaTypeQualifiers3, javaTypeQualifiers3, javaTypeQualifiers4);
                functionEnhancementBuilder.b(str, javaTypeQualifiers4);
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder7 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/".concat("LinkedHashMap"));
        classEnhancementBuilder7.a("putFirst", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$29

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73145b;

            {
                this.f73145b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73145b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, PredefinedEnhancementInfoKt.f73116a);
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder7.a("putLast", "2.2", new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$30

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73147b;

            {
                this.f73147b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73147b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, PredefinedEnhancementInfoKt.f73116a);
                return Unit.f71739a;
            }
        });
        SignatureEnhancementBuilder.ClassEnhancementBuilder classEnhancementBuilder8 = new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, strConcat9);
        classEnhancementBuilder8.a("empty", null, new Function1(strConcat9) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$31

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73148b;

            {
                this.f73148b = strConcat9;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73148b, PredefinedEnhancementInfoKt.f73117b, PredefinedEnhancementInfoKt.f73118c);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder8.a("of", null, new Function1(strConcat, strConcat9) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$32

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73149b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f73150c;

            {
                this.f73149b = strConcat;
                this.f73150c = strConcat9;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73118c;
                functionEnhancementBuilder.a(this.f73149b, javaTypeQualifiers2);
                functionEnhancementBuilder.b(this.f73150c, PredefinedEnhancementInfoKt.f73117b, javaTypeQualifiers2);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder8.a("ofNullable", null, new Function1(strConcat, strConcat9) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$33

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73151b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public final String f73152c;

            {
                this.f73151b = strConcat;
                this.f73152c = strConcat9;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73151b, PredefinedEnhancementInfoKt.f73116a);
                functionEnhancementBuilder.b(this.f73152c, PredefinedEnhancementInfoKt.f73117b, PredefinedEnhancementInfoKt.f73118c);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder8.a("get", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$34

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73153b;

            {
                this.f73153b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73153b, PredefinedEnhancementInfoKt.f73118c);
                functionEnhancementBuilder.f73184e = ReturnValueStatus.MustUse;
                return Unit.f71739a;
            }
        });
        classEnhancementBuilder8.a("ifPresent", null, new Function1(strConcat4) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$35

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73154b;

            {
                this.f73154b = strConcat4;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73154b, PredefinedEnhancementInfoKt.f73117b, PredefinedEnhancementInfoKt.f73118c);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/lang/".concat("ref/Reference")).a("get", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$36

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73155b;

            {
                this.f73155b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73155b, PredefinedEnhancementInfoKt.f73116a);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, strConcat2).a(Test.KEY, null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$37

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73156b;

            {
                this.f73156b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73156b, PredefinedEnhancementInfoKt.f73117b);
                functionEnhancementBuilder.c(JvmPrimitiveType.BOOLEAN);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/function/".concat("BiPredicate")).a(Test.KEY, null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$38

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73157b;

            {
                this.f73157b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73157b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.c(JvmPrimitiveType.BOOLEAN);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, strConcat4).a("accept", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$39

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73158b;

            {
                this.f73158b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.a(this.f73158b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, strConcat6).a("accept", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$40

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73160b;

            {
                this.f73160b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73160b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, strConcat3).a("apply", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$41

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73161b;

            {
                this.f73161b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73161b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, strConcat5).a("apply", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$42

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73162b;

            {
                this.f73162b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                JavaTypeQualifiers javaTypeQualifiers2 = PredefinedEnhancementInfoKt.f73117b;
                String str = this.f73162b;
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.a(str, javaTypeQualifiers2);
                functionEnhancementBuilder.b(str, javaTypeQualifiers2);
                return Unit.f71739a;
            }
        });
        new SignatureEnhancementBuilder.ClassEnhancementBuilder(signatureEnhancementBuilder, "java/util/function/".concat("Supplier")).a("get", null, new Function1(strConcat) { // from class: kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.PredefinedEnhancementInfoKt$$Lambda$43

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public final String f73163b;

            {
                this.f73163b = strConcat;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder functionEnhancementBuilder = (SignatureEnhancementBuilder.ClassEnhancementBuilder.FunctionEnhancementBuilder) obj;
                JavaTypeQualifiers javaTypeQualifiers = PredefinedEnhancementInfoKt.f73116a;
                functionEnhancementBuilder.getClass();
                functionEnhancementBuilder.b(this.f73163b, PredefinedEnhancementInfoKt.f73117b);
                return Unit.f71739a;
            }
        });
        d = signatureEnhancementBuilder.f73178a;
    }
}
