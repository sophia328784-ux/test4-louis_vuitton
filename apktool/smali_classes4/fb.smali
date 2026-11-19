.class public final synthetic Lfb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:F

.field public final synthetic i:F


# direct methods
.method public synthetic constructor <init>(ZZZJJJFFI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lfb;->b:Z

    iput-boolean p2, p0, Lfb;->c:Z

    iput-boolean p3, p0, Lfb;->d:Z

    iput-wide p4, p0, Lfb;->e:J

    iput-wide p6, p0, Lfb;->f:J

    iput-wide p8, p0, Lfb;->g:J

    iput p10, p0, Lfb;->h:F

    iput p11, p0, Lfb;->i:F

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    move-object v11, p1

    check-cast v11, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v12

    iget-boolean v0, p0, Lfb;->b:Z

    iget-boolean v1, p0, Lfb;->c:Z

    iget-boolean v2, p0, Lfb;->d:Z

    iget-wide v3, p0, Lfb;->e:J

    iget-wide v5, p0, Lfb;->f:J

    iget-wide v7, p0, Lfb;->g:J

    iget v9, p0, Lfb;->h:F

    iget v10, p0, Lfb;->i:F

    invoke-static/range {v0 .. v12}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideTrackListKt;->a(ZZZJJJFFLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
