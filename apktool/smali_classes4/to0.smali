.class public final synthetic Lto0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:J

.field public final synthetic d:Landroidx/compose/runtime/MutableLongState;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;JLandroidx/compose/runtime/MutableLongState;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lto0;->b:Landroid/content/Context;

    iput-wide p2, p0, Lto0;->c:J

    iput-object p4, p0, Lto0;->d:Landroidx/compose/runtime/MutableLongState;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lto0;->d:Landroidx/compose/runtime/MutableLongState;

    invoke-interface {v0}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v1

    iget-wide v3, p0, Lto0;->c:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Landroidx/compose/runtime/LongState;->b()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-static {v5, v6}, Lcom/vuitton/android/presentation/extensions/LongExtKt;->b(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    iget-object p0, p0, Lto0;->b:Landroid/content/Context;

    const v1, 0x7f14037b

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1, p0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->i(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p0
.end method
