.class public final synthetic Le9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Landroidx/compose/ui/Modifier;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic e:J

.field public final synthetic f:Lkotlin/jvm/functions/Function3;

.field public final synthetic g:I

.field public final synthetic h:I


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function3;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le9;->b:Landroidx/compose/ui/Modifier;

    iput-object p2, p0, Le9;->c:Ljava/lang/String;

    iput-object p3, p0, Le9;->d:Landroidx/compose/ui/text/TextStyle;

    iput-wide p4, p0, Le9;->e:J

    iput-object p6, p0, Le9;->f:Lkotlin/jvm/functions/Function3;

    iput p7, p0, Le9;->g:I

    iput p8, p0, Le9;->h:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    move-object v6, p1

    check-cast v6, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, p0, Le9;->g:I

    or-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Landroidx/compose/runtime/RecomposeScopeImplKt;->a(I)I

    move-result v7

    iget-object v0, p0, Le9;->b:Landroidx/compose/ui/Modifier;

    iget-object v1, p0, Le9;->c:Ljava/lang/String;

    iget-object v2, p0, Le9;->d:Landroidx/compose/ui/text/TextStyle;

    iget-wide v3, p0, Le9;->e:J

    iget-object v5, p0, Le9;->f:Lkotlin/jvm/functions/Function3;

    iget v8, p0, Le9;->h:I

    invoke-static/range {v0 .. v8}, Lcom/vuitton/android/presentation/screen/distantrepairs/assessment/components/AssessmentDisclaimerKt;->a(Landroidx/compose/ui/Modifier;Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;JLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
