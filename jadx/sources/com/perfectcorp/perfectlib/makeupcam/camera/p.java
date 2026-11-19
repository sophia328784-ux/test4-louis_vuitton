package com.perfectcorp.perfectlib.makeupcam.camera;

/* JADX INFO: loaded from: classes3.dex */
public final /* synthetic */ class p implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f40915b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl.ConfigurationBuilder f40916c;
    public final /* synthetic */ int d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ ApplyEffectCtrl.FeatureConfiguration f40917e;

    public /* synthetic */ p(ApplyEffectCtrl.FeatureConfiguration featureConfiguration, ApplyEffectCtrl.ConfigurationBuilder configurationBuilder, int i2, int i3) {
        this.f40915b = i3;
        this.f40917e = featureConfiguration;
        this.f40916c = configurationBuilder;
        this.d = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i2 = this.f40915b;
        int i3 = this.d;
        ApplyEffectCtrl.ConfigurationBuilder configurationBuilder = this.f40916c;
        ApplyEffectCtrl.FeatureConfiguration featureConfiguration = this.f40917e;
        switch (i2) {
            case 0:
                ((ApplyEffectCtrl.BronzerConfiguration) featureConfiguration).d(configurationBuilder, i3);
                break;
            case 1:
                ((ApplyEffectCtrl.ConcealerConfiguration) featureConfiguration).d(configurationBuilder, i3);
                break;
            case 2:
                ((ApplyEffectCtrl.HairDyeConfiguration) featureConfiguration).d(configurationBuilder, i3);
                break;
            case 3:
                ((ApplyEffectCtrl.LipLinerConfiguration) featureConfiguration).d(configurationBuilder, i3);
                break;
            default:
                ((ApplyEffectCtrl.LipStickConfiguration) featureConfiguration).d(configurationBuilder, i3);
                break;
        }
    }
}
