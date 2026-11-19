.class public final synthetic Ldw0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/animation/BoundsTransform;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Ldw0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroidx/compose/animation/core/SpringSpec;
    .locals 2

    iget p0, p0, Ldw0;->a:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, Landroidx/compose/animation/SharedTransitionScopeKt;->a:Landroidx/compose/animation/core/SpringSpec;

    return-object p0

    :pswitch_0
    sget-object p0, Landroidx/compose/ui/geometry/Rect;->e:Landroidx/compose/ui/geometry/Rect$Companion;

    sget-object p0, Landroidx/compose/animation/core/VisibilityThresholdsKt;->a:Landroidx/compose/ui/geometry/Rect;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v1, v1, v0, p0}, Landroidx/compose/animation/core/AnimationSpecKt;->b(FFILjava/lang/Object;)Landroidx/compose/animation/core/SpringSpec;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
