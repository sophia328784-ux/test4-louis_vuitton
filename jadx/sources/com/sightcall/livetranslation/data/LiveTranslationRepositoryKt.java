package com.sightcall.livetranslation.data;

import com.sightcall.livetranslation.domain.Language;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u001a\u0012\u0010\u0000\u001a\b\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u0002¨\u0006\u0004"}, d2 = {"mapToDomain", "", "Lcom/sightcall/livetranslation/domain/Language;", "Lcom/sightcall/livetranslation/data/LanguageListEntity;", "livetranslation_release"}, k = 2, mv = {2, 3, 0}, xi = 48)
public final class LiveTranslationRepositoryKt {
    /* JADX INFO: Access modifiers changed from: private */
    public static final List<Language> mapToDomain(LanguageListEntity languageListEntity) {
        List<LanguageEntity> data = languageListEntity.getData();
        ArrayList arrayList = new ArrayList(CollectionsKt.t(data, 10));
        for (LanguageEntity languageEntity : data) {
            arrayList.add(new Language(languageEntity.getAttributes().getTag(), languageEntity.getAttributes().getName()));
        }
        return arrayList;
    }
}
