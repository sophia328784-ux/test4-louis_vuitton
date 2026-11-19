package com.sightcall.advancedannotations.domain.settings;

import com.sightcall.advancedannotations.domain.AdvancedAnnotationsRepository;
import com.sightcall.libraries.archi.nucleus.Action;
import com.sightcall.libraries.archi.nucleus.Command;
import com.sightcall.libraries.archi.nucleus.NoCommand;
import com.sightcall.libraries.archi.nucleus.Nucleus;
import defpackage.d21;
import defpackage.xe0;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Single;
import io.reactivex.rxjava3.subjects.PublishSubject;
import io.reactivex.rxjava3.subjects.Subject;
import java.util.List;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.functions.Function5;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001:\u0002\u001a\u001bB\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u0018\u001a\u00020\u0019H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\b0\u0007X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nRS\u0010\u000b\u001aG\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u000e0\r\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f\u0012\u0004\u0012\u00020\b\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u000e\u0012\u0004\u0012\u00020\u00100\u000f0\fj\b\u0012\u0004\u0012\u00020\u000e`\u0012¢\u0006\u0002\b\u0011X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u000e0\u0015X\u0096\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0016\u0010\u0017¨\u0006\u001c"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;", "repository", "Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;", "<init>", "(Lcom/sightcall/advancedannotations/domain/AdvancedAnnotationsRepository;)V", "actions", "Lio/reactivex/rxjava3/subjects/Subject;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "getActions", "()Lio/reactivex/rxjava3/subjects/Subject;", "reducer", "Lkotlin/Function3;", "Lcom/sightcall/libraries/archi/nucleus/Nucleus;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;", "Lkotlin/Pair;", "Lcom/sightcall/libraries/archi/nucleus/Command;", "Lkotlin/ExtensionFunctionType;", "Lcom/sightcall/libraries/archi/nucleus/NucleusReducer;", "nucleus", "state", "Lio/reactivex/rxjava3/core/Observable;", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "clear", "", "FetchSettingsSuccess", "FetchSettingsFailure", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public final class SettingsInteractorImpl implements SettingsInteractor {
    private final Subject<Action> actions;
    private final Nucleus<SettingsInteractor.State> nucleus;
    private final Function3<Nucleus<SettingsInteractor.State>, Pair<? extends SettingsInteractor.State, ? extends Command>, Action, Pair<SettingsInteractor.State, Command>> reducer;
    private final AdvancedAnnotationsRepository repository;
    private final Observable<SettingsInteractor.State> state;

    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsFailure;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "throwable", "", "<init>", "(Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FetchSettingsFailure implements Action {
        private final Throwable throwable;

        public FetchSettingsFailure(Throwable th) {
            th.getClass();
            this.throwable = th;
        }

        public static /* synthetic */ FetchSettingsFailure copy$default(FetchSettingsFailure fetchSettingsFailure, Throwable th, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                th = fetchSettingsFailure.throwable;
            }
            return fetchSettingsFailure.copy(th);
        }

        /* JADX INFO: renamed from: component1, reason: from getter */
        public final Throwable getThrowable() {
            return this.throwable;
        }

        public final FetchSettingsFailure copy(Throwable throwable) {
            throwable.getClass();
            return new FetchSettingsFailure(throwable);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FetchSettingsFailure) && Intrinsics.c(this.throwable, ((FetchSettingsFailure) other).throwable);
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public int hashCode() {
            return this.throwable.hashCode();
        }

        public String toString() {
            return d21.n("FetchSettingsFailure(throwable=", ")", this.throwable);
        }
    }

    @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractorImpl$FetchSettingsSuccess;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "settings", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "<init>", "(Ljava/util/List;)V", "getSettings", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final /* data */ class FetchSettingsSuccess implements Action {
        private final List<Setting> settings;

        public FetchSettingsSuccess(List<Setting> list) {
            list.getClass();
            this.settings = list;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public static /* synthetic */ FetchSettingsSuccess copy$default(FetchSettingsSuccess fetchSettingsSuccess, List list, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                list = fetchSettingsSuccess.settings;
            }
            return fetchSettingsSuccess.copy(list);
        }

        public final List<Setting> component1() {
            return this.settings;
        }

        public final FetchSettingsSuccess copy(List<Setting> settings) {
            settings.getClass();
            return new FetchSettingsSuccess(settings);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            return (other instanceof FetchSettingsSuccess) && Intrinsics.c(this.settings, ((FetchSettingsSuccess) other).settings);
        }

        public final List<Setting> getSettings() {
            return this.settings;
        }

        public int hashCode() {
            return this.settings.hashCode();
        }

        public String toString() {
            return d21.o("FetchSettingsSuccess(settings=", ")", this.settings);
        }
    }

    public SettingsInteractorImpl(AdvancedAnnotationsRepository advancedAnnotationsRepository) {
        advancedAnnotationsRepository.getClass();
        this.repository = advancedAnnotationsRepository;
        this.actions = new PublishSubject();
        xe0 xe0Var = new xe0(this, 16);
        this.reducer = xe0Var;
        Nucleus<SettingsInteractor.State> nucleus = new Nucleus<>((Single) Single.c(SettingsInteractor.State.Loading.INSTANCE), (Observable) getActions(), (Function3) xe0Var, (Function5) null, false, 24, (DefaultConstructorMarker) null);
        this.nucleus = nucleus;
        this.state = nucleus.getState();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Pair reducer$lambda$0(SettingsInteractorImpl settingsInteractorImpl, Nucleus nucleus, Pair pair, Action action) {
        nucleus.getClass();
        pair.getClass();
        action.getClass();
        Object failure = (SettingsInteractor.State) pair.f71705b;
        SettingsInteractor.Start start = SettingsInteractor.Start.INSTANCE;
        if (Intrinsics.c(action, start)) {
            failure = SettingsInteractor.State.Loading.INSTANCE;
        } else if (action instanceof FetchSettingsSuccess) {
            failure = new SettingsInteractor.State.Ready(((FetchSettingsSuccess) action).getSettings());
        } else if (action instanceof FetchSettingsFailure) {
            failure = new SettingsInteractor.State.Failure(((FetchSettingsFailure) action).getThrowable());
        }
        return new Pair(failure, Intrinsics.c(action, start) ? new FetchAnnotationSettings(settingsInteractorImpl.repository) : NoCommand.INSTANCE);
    }

    @Override // com.sightcall.advancedannotations.domain.settings.SettingsInteractor
    public void clear() {
        this.nucleus.clear();
    }

    @Override // com.sightcall.advancedannotations.domain.settings.SettingsInteractor
    public Observable<SettingsInteractor.State> getState() {
        return this.state;
    }

    @Override // com.sightcall.advancedannotations.domain.settings.SettingsInteractor
    public Subject<Action> getActions() {
        return this.actions;
    }
}
