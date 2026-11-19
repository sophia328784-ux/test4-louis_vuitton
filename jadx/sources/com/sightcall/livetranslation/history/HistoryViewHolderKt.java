package com.sightcall.livetranslation.history;

import com.sightcall.livetranslation.domain.Sentence;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0002¨\u0006\u0004"}, d2 = {"mapToAdapter", "", "Lcom/sightcall/livetranslation/history/HistoryAdapter$Item;", "Lcom/sightcall/livetranslation/history/HistoryInteractor$State;", "livetranslation_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class HistoryViewHolderKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<HistoryAdapter.Item> mapToAdapter(HistoryInteractor.State state) {
        List<Sentence> sentences = state.getSentences();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(sentences, 10));
        for (Sentence sentence : sentences) {
            arrayList.add(new HistoryAdapter.Item(sentence.getText(), sentence.getColor()));
        }
        return arrayList;
    }
}
