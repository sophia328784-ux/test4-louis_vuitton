.class public abstract Landroidx/navigation3/runtime/RememberNavBackStackKt;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {}
    d2 = {}
    k = 0x4
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a([Landroidx/navigation3/runtime/NavKey;Landroidx/compose/runtime/Composer;)Landroidx/navigation3/runtime/NavBackStack;
    .locals 11

    sget-object v0, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    new-instance v2, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;

    new-instance v3, Landroidx/navigation3/runtime/serialization/NavKeySerializer;

    invoke-direct {v3}, Landroidx/navigation3/runtime/serialization/NavKeySerializer;-><init>()V

    invoke-direct {v2, v3}, Landroidx/navigation3/runtime/serialization/NavBackStackSerializer;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->y(Ljava/lang/Object;)Z

    move-result v3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->x()Ljava/lang/Object;

    move-result-object v4

    if-nez v3, :cond_0

    sget-object v3, Landroidx/compose/runtime/Composer$Companion;->a:Landroidx/compose/runtime/Composer$Companion$Empty$1;

    if-ne v4, v3, :cond_1

    :cond_0
    new-instance v4, Lxn0;

    const/16 v3, 0xa

    invoke-direct {v4, p0, v3}, Lxn0;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->q(Ljava/lang/Object;)V

    :cond_1
    move-object v7, v4

    check-cast v7, Lkotlin/jvm/functions/Function0;

    sget-object p0, Landroidx/savedstate/serialization/SavedStateConfiguration;->d:Landroidx/savedstate/serialization/SavedStateConfiguration;

    new-instance v3, Les0;

    const/4 v4, 0x5

    invoke-direct {v3, v2, p0, v4}, Les0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v4, Lrp0;

    const/16 v5, 0x11

    invoke-direct {v4, v2, p0, v5}, Lrp0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v6, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;

    invoke-direct {v6, v3, v4}, Landroidx/compose/runtime/saveable/SaverKt$Saver$1;-><init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    const/16 v9, 0x180

    const/4 v10, 0x0

    move-object v8, p1

    invoke-static/range {v5 .. v10}, Landroidx/compose/runtime/saveable/RememberSaveableKt;->c([Ljava/lang/Object;Landroidx/compose/runtime/saveable/Saver;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/navigation3/runtime/NavBackStack;

    return-object p0
.end method
