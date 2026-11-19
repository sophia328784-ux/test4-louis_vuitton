.class public final synthetic Ldb0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Z

.field public final synthetic d:Lcom/vuitton/android/presentation/loading/LoadingMode;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:I

.field public final synthetic i:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldb0;->b:Landroidx/compose/ui/Modifier;

    iput-boolean p2, p0, Ldb0;->c:Z

    iput-object p3, p0, Ldb0;->d:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iput-boolean p4, p0, Ldb0;->e:Z

    iput-wide p5, p0, Ldb0;->f:J

    iput-object p7, p0, Ldb0;->g:Lkotlin/jvm/functions/Function0;

    iput p8, p0, Ldb0;->h:I

    iput p9, p0, Ldb0;->i:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Ldb0;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Ldb0;->b:Landroidx/compose/ui/Modifier;

    iget-boolean v1, p0, Ldb0;->c:Z

    iget-object v2, p0, Ldb0;->d:Lcom/vuitton/android/presentation/loading/LoadingMode;

    iget-boolean v3, p0, Ldb0;->e:Z

    iget-wide v4, p0, Ldb0;->f:J

    iget-object v6, p0, Ldb0;->g:Lkotlin/jvm/functions/Function0;

    iget v9, p0, Ldb0;->i:I

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/loading/LvLoadingKt;->b(Landroidx/compose/ui/Modifier;ZLcom/vuitton/android/presentation/loading/LoadingMode;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
