package com.dynatrace.agent.compose.userinteraction.utils;

import defpackage.x20;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/utils/ItemLambdaProcessor;", "Lcom/dynatrace/agent/compose/userinteraction/utils/StringProcessor;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ItemLambdaProcessor implements StringProcessor {
    @Override // com.dynatrace.agent.compose.userinteraction.utils.StringProcessor
    public final String a(String str) {
        str.getClass();
        return CollectionsKt.K(StringsKt__StringsKt.split$default(str, new String[]{"->"}, false, 0, 6, null), "->", null, null, new x20(11), 30);
    }
}
