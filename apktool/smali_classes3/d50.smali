.class public final synthetic Ld50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:C

.field public final synthetic c:Z

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:J


# direct methods
.method public synthetic constructor <init>(CZLandroidx/compose/ui/text/TextStyle;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Ld50;->b:C

    iput-boolean p2, p0, Ld50;->c:Z

    iput-object p3, p0, Ld50;->d:Landroidx/compose/ui/text/TextStyle;

    iput-wide p4, p0, Ld50;->e:J

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    move-object v5, p1

    check-cast v5, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v6

    iget-char v0, p0, Ld50;->b:C

    iget-boolean v1, p0, Ld50;->c:Z

    iget-object v2, p0, Ld50;->d:Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, p0, Ld50;->e:J

    invoke-static/range {v0 .. v6}, Lcom/vuitton/android/designkit/components/components/LVAnimatedDigitsKt;->b(CZLandroidx/compose/ui/text/TextStyle;JLandroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
