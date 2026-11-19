.class public final synthetic Lz11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:I

.field public final synthetic d:Z

.field public final synthetic e:I

.field public final synthetic f:Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;

.field public final synthetic g:Z

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function1;

.field public final synthetic j:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;IZILcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz11;->b:Landroidx/compose/ui/Modifier;

    iput p2, p0, Lz11;->c:I

    iput-boolean p3, p0, Lz11;->d:Z

    iput p4, p0, Lz11;->e:I

    iput-object p5, p0, Lz11;->f:Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;

    iput-boolean p6, p0, Lz11;->g:Z

    iput-object p7, p0, Lz11;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lz11;->i:Lkotlin/jvm/functions/Function1;

    iput p9, p0, Lz11;->j:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lz11;->j:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, Lz11;->b:Landroidx/compose/ui/Modifier;

    iget v1, p0, Lz11;->c:I

    iget-boolean v2, p0, Lz11;->d:Z

    iget v3, p0, Lz11;->e:I

    iget-object v4, p0, Lz11;->f:Lcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;

    iget-boolean v5, p0, Lz11;->g:Z

    iget-object v6, p0, Lz11;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lz11;->i:Lkotlin/jvm/functions/Function1;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/story/components/StorySlideComposableKt;->a(Landroidx/compose/ui/Modifier;IZILcom/vuitton/android/presentation/screen/story/models/StorySlideUiModel;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
