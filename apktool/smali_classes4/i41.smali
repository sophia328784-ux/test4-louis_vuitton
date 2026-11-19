.class public final synthetic Li41;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;JJFFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Li41;->b:Ljava/lang/String;

    iput-wide p2, p0, Li41;->c:J

    iput-wide p4, p0, Li41;->d:J

    iput p6, p0, Li41;->e:F

    iput p7, p0, Li41;->f:F

    iput-object p8, p0, Li41;->g:Lkotlin/jvm/functions/Function0;

    iput-object p9, p0, Li41;->h:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    move-object v9, p1

    check-cast v9, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v10

    iget-object v0, p0, Li41;->b:Ljava/lang/String;

    iget-wide v1, p0, Li41;->c:J

    iget-wide v3, p0, Li41;->d:J

    iget v5, p0, Li41;->e:F

    iget v6, p0, Li41;->f:F

    iget-object v7, p0, Li41;->g:Lkotlin/jvm/functions/Function0;

    iget-object v8, p0, Li41;->h:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v10}, Lcom/vuitton/android/presentation/screen/audioguide/components/bottomsheets/trackdetail/TrackDetailCoverKt;->a(Ljava/lang/String;JJFFLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
