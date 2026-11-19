package com.sightcall.livetranslation.data;

import com.sightcall.livetranslation.LiveTranslationAPI;
import com.sightcall.livetranslation.domain.Language;
import com.sightcall.livetranslation.domain.LiveTranslationRepository;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000b0\n0\tH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcom/sightcall/livetranslation/data/LiveTranslationRepositoryImpl;", "Lcom/sightcall/livetranslation/domain/LiveTranslationRepository;", "api", "Lcom/sightcall/livetranslation/data/API;", "liveTranslationUrl", "Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;", "<init>", "(Lcom/sightcall/livetranslation/data/API;Lcom/sightcall/livetranslation/LiveTranslationAPI$LiveTranslationLanguagesUrl;)V", "fetchLanguages", "Lio/reactivex/rxjava3/core/Single;", "", "Lcom/sightcall/livetranslation/domain/Language;", "livetranslation_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class LiveTranslationRepositoryImpl implements LiveTranslationRepository {
    private final API api;
    private final LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationUrl;

    public LiveTranslationRepositoryImpl(API api, LiveTranslationAPI.LiveTranslationLanguagesUrl liveTranslationLanguagesUrl) {
        api.getClass();
        liveTranslationLanguagesUrl.getClass();
        this.api = api;
        this.liveTranslationUrl = liveTranslationLanguagesUrl;
    }

    @Override // com.sightcall.livetranslation.domain.LiveTranslationRepository
    public Single<List<Language>> fetchLanguages() {
        return this.api.fetchLanguage(this.liveTranslationUrl.getUrl()).d(new Function() { // from class: com.sightcall.livetranslation.data.LiveTranslationRepositoryImpl.fetchLanguages.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final List<Language> apply(LanguageListEntity languageListEntity) {
                languageListEntity.getClass();
                return LiveTranslationRepositoryKt.mapToDomain(languageListEntity);
            }
        });
    }
}
