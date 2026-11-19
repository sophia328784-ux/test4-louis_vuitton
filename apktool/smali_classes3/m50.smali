.class public final synthetic Lm50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

.field public final synthetic c:I

.field public final synthetic d:J

.field public final synthetic e:J

.field public final synthetic f:Z


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJZI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm50;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

    iput p2, p0, Lm50;->c:I

    iput-wide p3, p0, Lm50;->d:J

    iput-wide p5, p0, Lm50;->e:J

    iput-boolean p7, p0, Lm50;->f:Z

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p1, 0x6001

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lm50;->b:Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;

    iget v1, p0, Lm50;->c:I

    iget-wide v2, p0, Lm50;->d:J

    iget-wide v4, p0, Lm50;->e:J

    iget-boolean v6, p0, Lm50;->f:Z

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/designkit/ui/theme/molecules/LVCapsulePageControlKt;->b(Lcom/vuitton/android/designkit/ui/theme/molecules/PagerDotState;IJJZLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
