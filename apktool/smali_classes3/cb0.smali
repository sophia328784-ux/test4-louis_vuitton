.class public final synthetic Lcb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/loading/LoadingMode;

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function0;

.field public final synthetic g:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lcb0;->c:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iput-boolean p3, p0, Lcb0;->d:Z

    iput-wide p4, p0, Lcb0;->e:J

    iput-object p6, p0, Lcb0;->f:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, Lcb0;->g:Landroidx/compose/runtime/MutableState;

    return-void
.end method


# virtual methods
.method public final A(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    check-cast p1, Landroidx/compose/animation/AnimatedVisibilityScope;

    move-object v7, p2

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p2, p0, Lcb0;->b:Landroidx/compose/ui/Modifier;

    if-eqz p2, :cond_0

    const-string p3, "LvLoadingWithEnterExitAnimation$lambda$10"

    invoke-static {p2, p3}, La;->e(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;

    move-result-object p2

    :cond_0
    move-object v0, p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p1, Landroidx/compose/runtime/ComposerKt;->a:Landroidx/compose/runtime/OpaqueKey;

    iget-object p1, p0, Lcb0;->g:Landroidx/compose/runtime/MutableState;

    invoke-interface {p1}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v8, 0x0

    iget-object v1, p0, Lcb0;->c:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iget-boolean v3, p0, Lcb0;->d:Z

    iget-wide v4, p0, Lcb0;->e:J

    iget-object v6, p0, Lcb0;->f:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
