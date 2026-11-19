.class public final synthetic Ldy0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/perfectcorp/thirdparty/com/google/common/base/Predicate;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map;I)V
    .locals 0

    iput p2, p0, Ldy0;->b:I

    iput-object p1, p0, Ldy0;->c:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 5

    iget v0, p0, Ldy0;->b:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object p0, p0, Ldy0;->c:Ljava/util/Map;

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/f$a;->b()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    return v1

    :pswitch_0
    check-cast p1, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/perfectcorp/perfectlib/ph/kernelctrl/networktaskmanager/sku/b$a;->b()J

    move-result-wide p0

    cmp-long p0, v3, p0

    if-gez p0, :cond_3

    :cond_2
    move v1, v2

    :cond_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
