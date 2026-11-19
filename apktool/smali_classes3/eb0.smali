.class public final synthetic Leb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/loading/LoadingMode;

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZZJLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leb0;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Leb0;->c:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iput-boolean p3, p0, Leb0;->d:Z

    iput-boolean p4, p0, Leb0;->e:Z

    iput-wide p5, p0, Leb0;->f:J

    iput-object p7, p0, Leb0;->g:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Leb0;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Leb0;->c:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iget-boolean v2, p0, Leb0;->d:Z

    iget-boolean v3, p0, Leb0;->e:Z

    iget-wide v4, p0, Leb0;->f:J

    iget-object v6, p0, Leb0;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/loading/LoadingMode;ZZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
