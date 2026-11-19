package com.vuitton.android.data.dto.profile;

import com.vuitton.android.core.platform.serialization.JsonProviderKt;
import com.vuitton.android.data.dto.profile.twist.KisaConsentsDto;
import com.vuitton.foundation.model.domain.model.account.consent.KisaConsents;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonElementSerializer;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.internal.TreeJsonDecoderKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\n"}, d2 = {"<anonymous>", "Lkotlin/Result;", "Lcom/vuitton/foundation/model/domain/model/account/consent/KisaConsents;", "Lkotlinx/coroutines/CoroutineScope;"}, k = 3, mv = {2, 3, 0}, xi = 48)
@DebugMetadata(c = "com.vuitton.android.data.dto.profile.KisaConsentsParserImpl$parse$2", f = "KisaConsentsParserImpl.kt", l = {}, m = "invokeSuspend", v = 2)
final class KisaConsentsParserImpl$parse$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Result<? extends KisaConsents>>, Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public /* synthetic */ Object f46676b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f46677c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public KisaConsentsParserImpl$parse$2(String str, Continuation continuation) {
        super(2, continuation);
        this.f46677c = str;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation create(Object obj, Continuation continuation) {
        KisaConsentsParserImpl$parse$2 kisaConsentsParserImpl$parse$2 = new KisaConsentsParserImpl$parse$2(this.f46677c, continuation);
        kisaConsentsParserImpl$parse$2.f46676b = obj;
        return kisaConsentsParserImpl$parse$2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Object obj2) {
        return ((KisaConsentsParserImpl$parse$2) create((CoroutineScope) obj, (Continuation) obj2)).invokeSuspend(Unit.f71739a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        Object failure;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.COROUTINE_SUSPENDED;
        ResultKt.b(obj);
        String str = this.f46677c;
        try {
            Result.Companion companion = Result.INSTANCE;
            Json json = JsonProviderKt.f43520a;
            json.getClass();
            str.getClass();
            JsonElement jsonElement = (JsonElement) JsonElementKt.c((JsonElement) json.b(JsonElementSerializer.f75746a, str)).get("consents");
            if (jsonElement == null) {
                throw new IllegalArgumentException("No consents in payload");
            }
            JsonObject jsonObjectC = JsonElementKt.c(jsonElement);
            KSerializer<KisaConsentsDto> kSerializerSerializer = KisaConsentsDto.INSTANCE.serializer();
            kSerializerSerializer.getClass();
            failure = UserConsentsMapperKt.a((KisaConsentsDto) TreeJsonDecoderKt.a(json, jsonObjectC, kSerializerSerializer));
            return new Result(failure);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            failure = new Result.Failure(th);
        }
    }
}
