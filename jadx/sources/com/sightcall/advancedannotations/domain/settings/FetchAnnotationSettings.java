package com.sightcall.advancedannotations.domain.settings;

import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Command;
import defpackage.mt;
import io.reactivex.rxjava3.core.Scheduler;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.functions.Function;
import io.reactivex.rxjava3.internal.operators.single.SingleOnErrorReturn;
import io.reactivex.rxjava3.internal.operators.single.SingleSubscribeOn;
import io.reactivex.rxjava3.schedulers.Schedulers;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b\u0000\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\t"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/FetchAnnotationSettings;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "repository", "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;", "<init>", "(Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)V", "execute", "Lio/reactivex/rxjava3/core/Single;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class FetchAnnotationSettings implements Command {
    private final AdvancedAnnotationsRepository repository;

    public FetchAnnotationSettings(AdvancedAnnotationsRepository advancedAnnotationsRepository) {
        advancedAnnotationsRepository.getClass();
        this.repository = advancedAnnotationsRepository;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Action execute$lambda$0(Throwable th) {
        th.getClass();
        return new SettingsInteractorImpl.FetchSettingsFailure(th);
    }

    @Override // com.sightcall.libraries.archi.nucleus.Command
    public Single<Action> execute() {
        Single<List<Setting>> singleFetchSettings = this.repository.fetchSettings();
        Scheduler scheduler = Schedulers.f71156b;
        singleFetchSettings.getClass();
        Objects.requireNonNull(scheduler, "scheduler is null");
        return new SingleOnErrorReturn(new SingleSubscribeOn(singleFetchSettings, scheduler).d(new Function() { // from class: com.sightcall.advancedannotations.domain.settings.FetchAnnotationSettings.execute.1
            @Override // io.reactivex.rxjava3.functions.Function
            public final Action apply(List<Setting> list) {
                list.getClass();
                return new SettingsInteractorImpl.FetchSettingsSuccess(list);
            }
        }), new mt(24), null);
    }
}
