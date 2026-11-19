.class public final synthetic Lo10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

.field public final synthetic d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic e:Z

.field public final synthetic f:J

.field public final synthetic g:Lkotlin/jvm/functions/Function0;

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo10;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Lo10;->c:Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    iput-object p3, p0, Lo10;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-boolean p4, p0, Lo10;->e:Z

    iput-wide p5, p0, Lo10;->f:J

    iput-object p7, p0, Lo10;->g:Lkotlin/jvm/functions/Function0;

    iput p8, p0, Lo10;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v7, p1

    check-cast v7, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Lo10;->h:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v8

    iget-object v0, p0, Lo10;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Lo10;->c:Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;

    iget-object v2, p0, Lo10;->d:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-boolean v3, p0, Lo10;->e:Z

    iget-wide v4, p0, Lo10;->f:J

    iget-object v6, p0, Lo10;->g:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentOrderItemKt;->a(Landroidx/compose/ui/Modifier;Lcom/vuitton/android/presentation/common/hotcontent/models/HotContentItemUiModel$Order;Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;ZJLkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
