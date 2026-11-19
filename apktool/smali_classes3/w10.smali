.class public final synthetic Lw10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:Z

.field public final synthetic d:Z

.field public final synthetic e:J

.field public final synthetic f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

.field public final synthetic g:Lkotlin/jvm/functions/Function1;

.field public final synthetic h:Lkotlin/jvm/functions/Function0;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;ZZJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw10;->b:Ljava/util/List;

    iput-boolean p2, p0, Lw10;->c:Z

    iput-boolean p3, p0, Lw10;->d:Z

    iput-wide p4, p0, Lw10;->e:J

    iput-object p6, p0, Lw10;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iput-object p7, p0, Lw10;->g:Lkotlin/jvm/functions/Function1;

    iput-object p8, p0, Lw10;->h:Lkotlin/jvm/functions/Function0;

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

    iget-object v0, p0, Lw10;->b:Ljava/util/List;

    iget-boolean v1, p0, Lw10;->c:Z

    iget-boolean v2, p0, Lw10;->d:Z

    iget-wide v3, p0, Lw10;->e:J

    iget-object v5, p0, Lw10;->f:Lcom/vuitton/android/designkit/ui/theme/LVColorScheme;

    iget-object v6, p0, Lw10;->g:Lkotlin/jvm/functions/Function1;

    iget-object v7, p0, Lw10;->h:Lkotlin/jvm/functions/Function0;

    invoke-static/range {v0 .. v9}, Lcom/vuitton/android/presentation/common/hotcontent/components/HotContentWidgetKt;->a(Ljava/util/List;ZZJLcom/vuitton/android/designkit/ui/theme/LVColorScheme;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
