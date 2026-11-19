package kotlinx.serialization.json.internal;

import defpackage.md;
import kotlin.DeepRecursiveScope;
import kotlin.Metadata;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function3;
import kotlinx.serialization.json.JsonElement;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001*\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00010\u00022\u0006\u0010\u0004\u001a\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlinx/serialization/json/JsonElement;", "Lkotlin/DeepRecursiveScope;", "", "it"}, k = 3, mv = {2, 1, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.serialization.json.internal.JsonTreeReader$readDeepRecursive$1", f = "JsonTreeReader.kt", l = {115}, m = "invokeSuspend")
final class JsonTreeReader$readDeepRecursive$1 extends RestrictedSuspendLambda implements Function3<DeepRecursiveScope<Unit, JsonElement>, Unit, Continuation<? super JsonElement>, Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f75807c;
    public /* synthetic */ DeepRecursiveScope d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ JsonTreeReader f75808e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeReader$readDeepRecursive$1(JsonTreeReader jsonTreeReader, Continuation continuation) {
        super(3, continuation);
        this.f75808e = jsonTreeReader;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object A(Object obj, Object obj2, Object obj3) {
        JsonTreeReader$readDeepRecursive$1 jsonTreeReader$readDeepRecursive$1 = new JsonTreeReader$readDeepRecursive$1(this.f75808e, (Continuation) obj3);
        jsonTreeReader$readDeepRecursive$1.d = (DeepRecursiveScope) obj;
        return jsonTreeReader$readDeepRecursive$1.invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        JsonTreeReader jsonTreeReader = this.f75808e;
        AbstractJsonLexer abstractJsonLexer = jsonTreeReader.f75804a;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        int i2 = this.f75807c;
        if (i2 == 0) {
            ResultKt.b(obj);
            DeepRecursiveScope deepRecursiveScope = this.d;
            byte bQ = abstractJsonLexer.q();
            if (bQ == 1) {
                return jsonTreeReader.d(true);
            }
            if (bQ == 0) {
                return jsonTreeReader.d(false);
            }
            if (bQ != 6) {
                if (bQ == 8) {
                    return jsonTreeReader.c();
                }
                AbstractJsonLexer.m(abstractJsonLexer, "Can't begin reading element, unexpected token", 0, null, 6);
                throw null;
            }
            this.f75807c = 1;
            obj = JsonTreeReader.a(jsonTreeReader, deepRecursiveScope, this);
            if (obj == coroutineSingletons) {
                return coroutineSingletons;
            }
        } else {
            if (i2 != 1) {
                md.k("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        }
        return (JsonElement) obj;
    }
}
