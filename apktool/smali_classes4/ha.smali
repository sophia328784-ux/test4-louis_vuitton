.class public final synthetic Lha;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

.field public final synthetic c:J

.field public final synthetic d:J

.field public final synthetic e:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;JJLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lha;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    iput-wide p2, p0, Lha;->c:J

    iput-wide p4, p0, Lha;->d:J

    iput-object p6, p0, Lha;->e:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Lha;->b:Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;

    iget-wide v1, p0, Lha;->c:J

    iget-wide v3, p0, Lha;->d:J

    iget-object v5, p0, Lha;->e:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v7}, Lcom/vuitton/android/presentation/screen/audioguide/components/AudioGuideCardKt;->a(Lcom/vuitton/android/presentation/screen/audioguide/models/AudioGuideUiModel$AudioGuideCardUiModel;JJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
