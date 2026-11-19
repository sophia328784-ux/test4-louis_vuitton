package kotlinx.serialization.json.internal;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import kotlin.DeepRecursiveFunction;
import kotlin.Function3;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.serialization.json.JsonArray;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007¨\u0006\b"}, d2 = {"Lkotlinx/serialization/json/internal/JsonTreeReader;", "", "Lkotlinx/serialization/json/JsonConfiguration;", "configuration", "Lkotlinx/serialization/json/internal/AbstractJsonLexer;", "lexer", "<init>", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/AbstractJsonLexer;)V", "kotlinx-serialization-json"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class JsonTreeReader {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AbstractJsonLexer f75804a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f75805b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f75806c;
    public int d;

    public JsonTreeReader(JsonConfiguration jsonConfiguration, AbstractJsonLexer abstractJsonLexer) {
        jsonConfiguration.getClass();
        abstractJsonLexer.getClass();
        this.f75804a = abstractJsonLexer;
        this.f75805b = jsonConfiguration.f75736c;
        this.f75806c = jsonConfiguration.o;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x005a  */
    /* JADX WARN: Code duplicated, block: B:21:0x005e  */
    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    /* JADX WARN: Code duplicated, block: B:25:0x007d A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:26:0x007e  */
    /* JADX WARN: Code duplicated, block: B:29:0x0091 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:30:0x0093  */
    /* JADX WARN: Code duplicated, block: B:31:0x0096  */
    /* JADX WARN: Code duplicated, block: B:33:0x009e  */
    /* JADX WARN: Code duplicated, block: B:7:0x0015  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x007e -> B:27:0x0084). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public static final java.lang.Object a(kotlinx.serialization.json.internal.JsonTreeReader r12, kotlin.DeepRecursiveScope r13, kotlin.coroutines.jvm.internal.BaseContinuationImpl r14) {
        /*
            kotlinx.serialization.json.internal.AbstractJsonLexer r0 = r12.f75804a
            boolean r1 = r14 instanceof kotlinx.serialization.json.internal.JsonTreeReader$readObject$2
            if (r1 == 0) goto L15
            r1 = r14
            kotlinx.serialization.json.internal.JsonTreeReader$readObject$2 r1 = (kotlinx.serialization.json.internal.JsonTreeReader$readObject$2) r1
            int r2 = r1.f75813h
            r3 = -2147483648(0xffffffff80000000, float:-0.0)
            r4 = r2 & r3
            if (r4 == 0) goto L15
            int r2 = r2 - r3
            r1.f75813h = r2
            goto L1a
        L15:
            kotlinx.serialization.json.internal.JsonTreeReader$readObject$2 r1 = new kotlinx.serialization.json.internal.JsonTreeReader$readObject$2
            r1.<init>(r12, r14)
        L1a:
            java.lang.Object r14 = r1.f75812f
            kotlin.coroutines.intrinsics.CoroutineSingletons r2 = kotlin.coroutines.intrinsics.CoroutineSingletons.COROUTINE_SUSPENDED
            int r3 = r1.f75813h
            r4 = 0
            r5 = 0
            r6 = 6
            r7 = 7
            r8 = 4
            r9 = 1
            if (r3 == 0) goto L40
            if (r3 != r9) goto L3a
            java.lang.String r12 = r1.f75811e
            java.util.LinkedHashMap r13 = r1.d
            kotlinx.serialization.json.internal.JsonTreeReader r0 = r1.f75810c
            kotlin.DeepRecursiveScope r3 = r1.f75809b
            kotlin.ResultKt.b(r14)
            r11 = r1
            r1 = r13
            r13 = r3
            r3 = r11
            goto L84
        L3a:
            java.lang.String r12 = "call to 'resume' before 'invoke' with coroutine"
            defpackage.md.k(r12)
            return r5
        L40:
            kotlin.ResultKt.b(r14)
            byte r14 = r0.f(r6)
            byte r3 = r0.q()
            if (r3 == r8) goto Lc0
            java.util.LinkedHashMap r0 = new java.util.LinkedHashMap
            r0.<init>()
        L52:
            kotlinx.serialization.json.internal.AbstractJsonLexer r3 = r12.f75804a
            boolean r10 = r3.b()
            if (r10 == 0) goto La2
            boolean r14 = r12.f75805b
            if (r14 == 0) goto L63
            java.lang.String r14 = r3.j()
            goto L67
        L63:
            java.lang.String r14 = r3.i()
        L67:
            r10 = 5
            r3.f(r10)
            kotlin.Unit r3 = kotlin.Unit.f71739a
            r1.f75809b = r13
            r1.f75810c = r12
            r1.d = r0
            r1.f75811e = r14
            r1.f75813h = r9
            kotlin.coroutines.intrinsics.CoroutineSingletons r3 = r13.a(r3, r1)
            if (r3 != r2) goto L7e
            return r2
        L7e:
            r11 = r0
            r0 = r12
            r12 = r14
            r14 = r3
            r3 = r1
            r1 = r11
        L84:
            kotlinx.serialization.json.JsonElement r14 = (kotlinx.serialization.json.JsonElement) r14
            r1.put(r12, r14)
            kotlinx.serialization.json.internal.AbstractJsonLexer r12 = r0.f75804a
            byte r14 = r12.e()
            if (r14 == r8) goto L9e
            if (r14 != r7) goto L96
            r12 = r0
            r0 = r1
            goto La2
        L96:
            kotlinx.serialization.json.internal.AbstractJsonLexer r12 = r0.f75804a
            java.lang.String r13 = "Expected end of the object or comma"
            kotlinx.serialization.json.internal.AbstractJsonLexer.m(r12, r13, r4, r5, r6)
            throw r5
        L9e:
            r12 = r0
            r0 = r1
            r1 = r3
            goto L52
        La2:
            kotlinx.serialization.json.internal.AbstractJsonLexer r13 = r12.f75804a
            if (r14 != r6) goto Laa
            r13.f(r7)
            goto Lba
        Laa:
            if (r14 != r8) goto Lba
            boolean r12 = r12.f75806c
            if (r12 == 0) goto Lb4
            r13.f(r7)
            goto Lba
        Lb4:
            java.lang.String r12 = "object"
            kotlinx.serialization.json.internal.JsonExceptionsKt.f(r13, r12)
            throw r5
        Lba:
            kotlinx.serialization.json.JsonObject r12 = new kotlinx.serialization.json.JsonObject
            r12.<init>(r0)
            return r12
        Lc0:
            java.lang.String r12 = "Unexpected leading comma"
            kotlinx.serialization.json.internal.AbstractJsonLexer.m(r0, r12, r4, r5, r6)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonTreeReader.a(kotlinx.serialization.json.internal.JsonTreeReader, kotlin.DeepRecursiveScope, kotlin.coroutines.jvm.internal.BaseContinuationImpl):java.lang.Object");
    }

    public final JsonElement b() {
        JsonElement jsonObject;
        AbstractJsonLexer abstractJsonLexer = this.f75804a;
        byte bQ = abstractJsonLexer.q();
        if (bQ == 1) {
            return d(true);
        }
        if (bQ == 0) {
            return d(false);
        }
        if (bQ != 6) {
            if (bQ == 8) {
                return c();
            }
            AbstractJsonLexer.m(abstractJsonLexer, "Cannot read Json element because of unexpected ".concat(AbstractJsonLexerKt.b(bQ)), 0, null, 6);
            throw null;
        }
        int i2 = this.d + 1;
        this.d = i2;
        if (i2 == 200) {
            jsonObject = (JsonElement) Function3.a(new DeepRecursiveFunction(new JsonTreeReader$readDeepRecursive$1(this, null)), Unit.f71739a);
        } else {
            byte bF = abstractJsonLexer.f((byte) 6);
            if (abstractJsonLexer.q() == 4) {
                AbstractJsonLexer.m(abstractJsonLexer, "Unexpected leading comma", 0, null, 6);
                throw null;
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (abstractJsonLexer.b()) {
                String strJ = this.f75805b ? abstractJsonLexer.j() : abstractJsonLexer.i();
                abstractJsonLexer.f((byte) 5);
                linkedHashMap.put(strJ, b());
                bF = abstractJsonLexer.e();
                if (bF != 4) {
                    if (bF == 7) {
                        break;
                    }
                    AbstractJsonLexer.m(abstractJsonLexer, "Expected end of the object or comma", 0, null, 6);
                    throw null;
                }
            }
            if (bF == 6) {
                abstractJsonLexer.f((byte) 7);
            } else if (bF == 4) {
                if (!this.f75806c) {
                    JsonExceptionsKt.f(abstractJsonLexer, "object");
                    throw null;
                }
                abstractJsonLexer.f((byte) 7);
            }
            jsonObject = new JsonObject(linkedHashMap);
        }
        this.d--;
        return jsonObject;
    }

    public final JsonArray c() {
        AbstractJsonLexer abstractJsonLexer = this.f75804a;
        byte bE = abstractJsonLexer.e();
        if (abstractJsonLexer.q() == 4) {
            AbstractJsonLexer.m(abstractJsonLexer, "Unexpected leading comma", 0, null, 6);
            throw null;
        }
        ArrayList arrayList = new ArrayList();
        while (abstractJsonLexer.b()) {
            arrayList.add(b());
            bE = abstractJsonLexer.e();
            if (bE != 4) {
                boolean z = bE == 9;
                int i2 = abstractJsonLexer.f75765a;
                if (!z) {
                    AbstractJsonLexer.m(abstractJsonLexer, "Expected end of the array or comma", i2, null, 4);
                    throw null;
                }
            }
        }
        if (bE == 8) {
            abstractJsonLexer.f((byte) 9);
        } else if (bE == 4) {
            if (!this.f75806c) {
                JsonExceptionsKt.f(abstractJsonLexer, "array");
                throw null;
            }
            abstractJsonLexer.f((byte) 9);
        }
        return new JsonArray(arrayList);
    }

    public final JsonPrimitive d(boolean z) {
        boolean z2 = this.f75805b;
        AbstractJsonLexer abstractJsonLexer = this.f75804a;
        String strJ = (z2 || !z) ? abstractJsonLexer.j() : abstractJsonLexer.i();
        return (z || !Intrinsics.c(strJ, "null")) ? new JsonLiteral(strJ, z, null, 4, null) : JsonNull.INSTANCE;
    }
}
