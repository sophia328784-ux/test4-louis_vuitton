package com.dynamicyield.sdk.wrapper.core.managers.serialization;

import com.dynamicyield.sdk.wrapper.core.managers.logging.loggingManager.DYLogger;
import defpackage.bp;
import kotlin.Metadata;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\b\u0007\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynamicyield/sdk/wrapper/core/managers/serialization/DecodingManager;", "", "<init>", "()V", "DY-Sdk_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DecodingManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DYLogger f25937a = new DYLogger("DecodingManager", null, 2, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Json f25938b = JsonKt.a(new bp(16));
}
