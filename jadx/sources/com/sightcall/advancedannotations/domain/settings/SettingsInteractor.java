package com.sightcall.advancedannotations.domain.settings;

import com.sightcall.libraries.archi.nucleus.Action;
import defpackage.d21;
import io.reactivex.rxjava3.core.Observable;
import io.reactivex.rxjava3.core.Observer;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b`\u0018\u00002\u00020\u0001:\u0002\u000e\u000fJ\b\u0010\f\u001a\u00020\rH&R\u0018\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006R\u0018\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX¦\u0004¢\u0006\u0006\u001a\u0004\b\n\u0010\u000b¨\u0006\u0010À\u0006\u0003"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor;", "", "actions", "Lio/reactivex/rxjava3/core/Observer;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "getActions", "()Lio/reactivex/rxjava3/core/Observer;", "state", "Lio/reactivex/rxjava3/core/Observable;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;", "getState", "()Lio/reactivex/rxjava3/core/Observable;", "clear", "", "State", "Start", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
public interface SettingsInteractor {

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$Start;", "Lcom/sightcall/libraries/archi/nucleus/Action;", "<init>", "()V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static final class Start implements Action {
        public static final Start INSTANCE = new Start();

        private Start() {
        }
    }

    void clear();

    Observer<Action> getActions();

    Observable<State> getState();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004¢\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t¨\u0006\n"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;", "", "<init>", "()V", "Loading", "Ready", "Failure", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Failure;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
    public static abstract class State {

        @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003HÆ\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003HÆ\u0001J\u0014\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rHÖ\u0083\u0004J\n\u0010\u000e\u001a\u00020\u000fHÖ\u0081\u0004J\n\u0010\u0010\u001a\u00020\u0011HÖ\u0081\u0004R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0012"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Failure;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;", "throwable", "", "<init>", "(Ljava/lang/Throwable;)V", "getThrowable", "()Ljava/lang/Throwable;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Failure extends State {
            private final Throwable throwable;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failure(Throwable th) {
                super(null);
                th.getClass();
                this.throwable = th;
            }

            public static /* synthetic */ Failure copy$default(Failure failure, Throwable th, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    th = failure.throwable;
                }
                return failure.copy(th);
            }

            /* JADX INFO: renamed from: component1, reason: from getter */
            public final Throwable getThrowable() {
                return this.throwable;
            }

            public final Failure copy(Throwable throwable) {
                throwable.getClass();
                return new Failure(throwable);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Failure) && Intrinsics.c(this.throwable, ((Failure) other).throwable);
            }

            public final Throwable getThrowable() {
                return this.throwable;
            }

            public int hashCode() {
                return this.throwable.hashCode();
            }

            public String toString() {
                return d21.n("Failure(throwable=", ")", this.throwable);
            }
        }

        @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0004"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Loading;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;", "<init>", "()V", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final class Loading extends State {
            public static final Loading INSTANCE = new Loading();

            private Loading() {
                super(null);
            }
        }

        @Metadata(d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u0015\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0003J\u0019\u0010\n\u001a\u00020\u00002\u000e\b\u0002\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003HÆ\u0001J\u0014\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eHÖ\u0083\u0004J\n\u0010\u000f\u001a\u00020\u0010HÖ\u0081\u0004J\n\u0010\u0011\u001a\u00020\u0012HÖ\u0081\u0004R\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\b¨\u0006\u0013"}, d2 = {"Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State$Ready;", "Lcom/sightcall/advancedannotations/domain/settings/SettingsInteractor$State;", "settings", "", "Lcom/sightcall/advancedannotations/domain/settings/Setting;", "<init>", "(Ljava/util/List;)V", "getSettings", "()Ljava/util/List;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "advancedannotations_release"}, k = 1, mv = {2, 3, 0}, xi = 48)
        public static final /* data */ class Ready extends State {
            private final List<Setting> settings;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Ready(List<Setting> list) {
                super(null);
                list.getClass();
                this.settings = list;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public static /* synthetic */ Ready copy$default(Ready ready, List list, int i2, Object obj) {
                if ((i2 & 1) != 0) {
                    list = ready.settings;
                }
                return ready.copy(list);
            }

            public final List<Setting> component1() {
                return this.settings;
            }

            public final Ready copy(List<Setting> settings) {
                settings.getClass();
                return new Ready(settings);
            }

            public boolean equals(Object other) {
                if (this == other) {
                    return true;
                }
                return (other instanceof Ready) && Intrinsics.c(this.settings, ((Ready) other).settings);
            }

            public final List<Setting> getSettings() {
                return this.settings;
            }

            public int hashCode() {
                return this.settings.hashCode();
            }

            public String toString() {
                return d21.o("Ready(settings=", ")", this.settings);
            }
        }

        public /* synthetic */ State(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private State() {
        }
    }
}
