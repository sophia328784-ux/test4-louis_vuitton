package com.dynatrace.agent.compose.userinteraction.utils;

import java.util.ArrayList;
import java.util.LinkedHashSet;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/dynatrace/agent/compose/userinteraction/utils/ItemRepeatedWordsProcessor;", "Lcom/dynatrace/agent/compose/userinteraction/utils/StringProcessor;", "<init>", "()V", "com.dynatrace.agent_release"}, k = 1, mv = {2, 0, 0}, xi = 48)
public final class ItemRepeatedWordsProcessor implements StringProcessor {
    @Override // com.dynatrace.agent.compose.userinteraction.utils.StringProcessor
    public final String a(String str) {
        str.getClass();
        List listSplit$default = StringsKt__StringsKt.split$default(str, new String[]{"->"}, false, 0, 6, null);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        ArrayList arrayList = new ArrayList();
        for (String str2 : CollectionsKt.f0(listSplit$default)) {
            String strT = StringsKt.T(str2, '[');
            if (!linkedHashSet.contains(strT)) {
                linkedHashSet.add(strT);
                arrayList.add(str2);
            }
        }
        return CollectionsKt.K(CollectionsKt.f0(arrayList), "->", null, null, null, 62);
    }
}
