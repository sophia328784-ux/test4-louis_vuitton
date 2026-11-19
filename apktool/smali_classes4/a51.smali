.class public final synthetic La51;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

.field public final synthetic c:F

.field public final synthetic d:Z

.field public final synthetic e:Z

.field public final synthetic f:Lkotlin/jvm/functions/Function1;

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:Lkotlin/jvm/functions/Function1;

.field public final synthetic i:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;FZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La51;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    iput p2, p0, La51;->c:F

    iput-boolean p3, p0, La51;->d:Z

    iput-boolean p4, p0, La51;->e:Z

    iput-object p5, p0, La51;->f:Lkotlin/jvm/functions/Function1;

    iput-object p6, p0, La51;->g:Lkotlin/jvm/functions/Function0;

    iput-object p7, p0, La51;->h:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, La51;->i:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    move-object v8, p1

    check-cast v8, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v9

    iget-object v0, p0, La51;->b:Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;

    iget v1, p0, La51;->c:F

    iget-boolean v2, p0, La51;->d:Z

    iget-boolean v3, p0, La51;->e:Z

    iget-object v4, p0, La51;->f:Lkotlin/jvm/functions/Function1;

    iget-object v5, p0, La51;->g:Lkotlin/jvm/functions/Function0;

    iget-object v6, p0, La51;->h:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, La51;->i:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/components/tutorial/TutorialBottomSheetContentKt;->a(Lcom/vuitton/android/presentation/screen/pdp/vto/beauty/models/TutorialState;FZZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
