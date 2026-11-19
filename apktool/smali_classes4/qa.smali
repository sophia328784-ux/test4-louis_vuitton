.class public final synthetic Lqa;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:J

.field public final synthetic h:Lkotlin/jvm/functions/Function0;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Ljava/lang/String;ZJJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lqa;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lqa;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iput-object p3, p0, Lqa;->d:Ljava/lang/String;

    iput-boolean p4, p0, Lqa;->e:Z

    iput-wide p5, p0, Lqa;->f:J

    iput-wide p7, p0, Lqa;->g:J

    iput-object p9, p0, Lqa;->h:Lkotlin/jvm/functions/Function0;

    iput-object p10, p0, Lqa;->i:Lkotlin/jvm/functions/Function0;

    iput p11, p0, Lqa;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    move-object v10, p1

    check-cast v10, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lqa;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v11

    iget-object v0, p0, Lqa;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lqa;->c:Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;

    iget-object v2, p0, Lqa;->d:Ljava/lang/String;

    iget-boolean v3, p0, Lqa;->e:Z

    iget-wide v4, p0, Lqa;->f:J

    iget-wide v6, p0, Lqa;->g:J

    iget-object v8, p0, Lqa;->h:Lkotlin/jvm/functions/Function0;

    iget-object v9, p0, Lqa;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v11}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideMiniPlayerKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/screen/audioguide/models/TrackDetailUiModel;Ljava/lang/String;ZJJLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
