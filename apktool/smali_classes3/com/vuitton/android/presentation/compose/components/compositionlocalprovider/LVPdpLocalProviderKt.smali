.class public abstract Lcom/vuitton/android/presentation/compose/components/compositionlocalprovider/LVPdpLocalProviderKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0002\n\u0000\u00a8\u0006\u0000"
    }
    d2 = {
        "presentation"
    }
    k = 0x2
    mv = {
        0x2,
        0x3,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a(Landroidx/compose/runtime/internal/ComposableLambdaImpl;Landroidx/compose/runtime/Composer;I)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    const v2, -0x42b2e49e

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Landroidx/compose/runtime/Composer;->h(I)Landroidx/compose/runtime/GapComposer;

    move-result-object v2

    and-int/lit8 v3, v1, 0x3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    and-int/lit8 v4, v1, 0x1

    invoke-virtual {v2, v4, v3}, Landroidx/compose/runtime/GapComposer;->p(IZ)Z

    move-result v3

    if-eqz v3, :cond_3

    sget-object v3, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    sget-object v3, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->b:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/GapComposer;->k(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    const-class v4, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackerEntryPoint;

    invoke-static {v3, v4}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackerEntryPoint;

    invoke-interface {v4}, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackerEntryPoint;->g()Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTracker;

    move-result-object v4

    const-class v5, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPoint;

    invoke-static {v3, v5}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPoint;

    invoke-interface {v5}, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPoint;->o()Lcom/vuitton/android/presentation/contact/ContactUsTracker;

    move-result-object v5

    sget-object v6, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->PDP:Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;

    invoke-virtual {v6}, Lcom/vuitton/android/presentation/contact/models/ContactUsOrigin;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/vuitton/android/presentation/contact/ContactUsTracker;->a(Ljava/lang/String;)V

    const-class v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPoint;

    invoke-static {v3, v6}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPoint;

    invoke-interface {v6}, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPoint;->n()Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTracker;

    move-result-object v6

    const-class v7, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPoint;

    invoke-static {v3, v7}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPoint;

    invoke-interface {v7}, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPoint;->m()Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTracker;

    move-result-object v7

    const-class v8, Lcom/vuitton/android/presentation/tracking/GA4TrackerEntryPoint;

    invoke-static {v3, v8}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/vuitton/android/presentation/tracking/GA4TrackerEntryPoint;

    invoke-interface {v8}, Lcom/vuitton/android/presentation/tracking/GA4TrackerEntryPoint;->b()Lcom/vuitton/android/presentation/tracking/GA4Tracker;

    move-result-object v8

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v9

    sget-object v10, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v9, v10, :cond_1

    const-class v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPoint;

    invoke-static {v3, v9}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPoint;

    invoke-interface {v9}, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPoint;->h()Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_1
    check-cast v9, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTracker;

    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->x()Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v10, :cond_2

    const-class v10, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPoint;

    invoke-static {v3, v10}, Ldagger/hilt/android/EntryPointAccessors;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPoint;

    invoke-interface {v3}, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPoint;->c()Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroidx/compose/runtime/GapComposer;->q(Ljava/lang/Object;)V

    :cond_2
    check-cast v11, Lcom/vuitton/android/presentation/tracking/AppsFlyerUiTracker;

    sget-object v3, Lcom/vuitton/android/presentation/tracking/AppsFlyerTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v11}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v12

    sget-object v3, Lcom/vuitton/android/presentation/screen/tracking/LegalConsentsTrackerKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v13

    sget-object v3, Lcom/vuitton/android/presentation/contact/ContactUsTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v5}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v14

    sget-object v3, Lcom/vuitton/android/presentation/screen/pdp/models/tracking/PdpTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v6}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v15

    sget-object v3, Lcom/vuitton/android/presentation/screen/reinsurance/ReinsuranceTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v7}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v16

    sget-object v3, Lcom/vuitton/android/presentation/tracking/GA4TrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v8}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v17

    sget-object v3, Lcom/vuitton/android/presentation/screen/aicompanion/models/tracking/AICompanionTrackerEntryPointKt;->a:Landroidx/compose/runtime/StaticProvidableCompositionLocal;

    invoke-virtual {v3, v9}, Landroidx/compose/runtime/StaticProvidableCompositionLocal;->c(Ljava/lang/Object;)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v18

    filled-new-array/range {v12 .. v18}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v3

    const/16 v4, 0x38

    invoke-static {v3, v0, v2, v4}, Landroidx/compose/runtime/CompositionLocalKt;->b([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->D()V

    :goto_1
    invoke-virtual {v2}, Landroidx/compose/runtime/GapComposer;->b0()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object v2

    if-eqz v2, :cond_4

    new-instance v3, Lql;

    const/16 v4, 0x10

    invoke-direct {v3, v0, v1, v4}, Lql;-><init>(Landroidx/compose/runtime/internal/ComposableLambdaImpl;II)V

    iput-object v3, v2, Landroidx/compose/runtime/RecomposeScopeImpl;->d:Lkotlin/jvm/functions/Function2;

    :cond_4
    return-void
.end method
