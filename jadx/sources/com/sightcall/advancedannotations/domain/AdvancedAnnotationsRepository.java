package com.sightcall.advancedannotations.domain;

import com.sightcall.advancedannotations.domain.settings.Setting;
import io.reactivex.rxjava3.core.Single;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b`\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0003H&¨\u0006\u0006À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;", "", "fetchSettings", "Lio/reactivex/rxjava3/core/Single;", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface AdvancedAnnotationsRepository {
    Single<List<Setting>> fetchSettings();
}
