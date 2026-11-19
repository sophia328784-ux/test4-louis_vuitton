package com.sightcall.advancedannotations.data;

import android.content.Context;
import com.google.gson.Gson;
import com.sightcall.advancedannotations.AdvancedAnnotationsAPI;
import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import com.sightcall.advancedannotations.domain.settings.Setting;
import defpackage.n2;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.single.SingleFromCallable;
import io.reactivex.rxjava3.internal.operators.single.SingleMap;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import kotlin.Metadata;
import kotlin.io.ByteStreamsKt;
import kotlin.text.Charsets;
import org.squirrelframework.foundation.fsm.MvelScriptManager;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0000\u0018\u00002\u00020\u0001B#\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0004\b\b\u0010\tJ\u0014\u0010\n\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\r0\f0\u000bH\u0016J\u000e\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\r0\fH\u0002R\u0010\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/sightcall/advancedannotations/data/AdvancedAnnotationsRepositoryImpl;", "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;", "api", "Lcom/sightcall/advancedannotations/data/API;", "settingsUrl", "Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;", MvelScriptManager.VAR_CONTEXT, "Landroid/content/Context;", "<init>", "(Lcom/sightcall/advancedannotations/data/API;Lcom/sightcall/advancedannotations/AdvancedAnnotationsAPI$AdvancedAnnotationsSettingsUrl;Landroid/content/Context;)V", "fetchSettings", "Lio/reactivex/rxjava3/core/Single;", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "parseLocalFile", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class AdvancedAnnotationsRepositoryImpl implements AdvancedAnnotationsRepository {
    private final API api;
    private final Context context;
    private final AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl settingsUrl;

    public AdvancedAnnotationsRepositoryImpl(API api, AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl, Context context) {
        context.getClass();
        this.api = api;
        this.settingsUrl = advancedAnnotationsSettingsUrl;
        this.context = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<Setting> parseLocalFile() throws IOException {
        Gson gson = new Gson();
        InputStream inputStreamOpen = this.context.getAssets().open("default/annotations.json");
        inputStreamOpen.getClass();
        Object objFromJson = gson.fromJson(new String(ByteStreamsKt.b(inputStreamOpen), Charsets.UTF_8), (Class<Object>) AnnotationSettingsEntity.class);
        objFromJson.getClass();
        return AdvancedAnnotationsRepositoryKt.mapToDomain((AnnotationSettingsEntity) objFromJson);
    }

    @Override // com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository
    public Single<List<Setting>> fetchSettings() {
        String url;
        Single<AnnotationSettingsEntity> singleFetchSettings;
        AdvancedAnnotationsAPI.AdvancedAnnotationsSettingsUrl advancedAnnotationsSettingsUrl = this.settingsUrl;
        if (advancedAnnotationsSettingsUrl != null && (url = advancedAnnotationsSettingsUrl.getUrl()) != null) {
            API api = this.api;
            SingleMap singleMapD = (api == null || (singleFetchSettings = api.fetchSettings(url)) == null) ? null : singleFetchSettings.d(new Function() { // from class: com.sightcall.advancedannotations.data.AdvancedAnnotationsRepositoryImpl$fetchSettings$1$1
                @Override // io.reactivex.rxjava3.functions.Function
                public final List<Setting> apply(AnnotationSettingsEntity annotationSettingsEntity) {
                    annotationSettingsEntity.getClass();
                    return AdvancedAnnotationsRepositoryKt.mapToDomain(annotationSettingsEntity);
                }
            });
            if (singleMapD != null) {
                return singleMapD;
            }
        }
        return new SingleFromCallable(new n2(this, 1));
    }
}
