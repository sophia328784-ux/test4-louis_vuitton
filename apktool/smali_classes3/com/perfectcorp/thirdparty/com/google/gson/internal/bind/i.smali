.class public final Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;
.super Lcom/perfectcorp/thirdparty/com/google/gson/k;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/perfectcorp/thirdparty/com/google/gson/k<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/perfectcorp/thirdparty/com/google/gson/l;


# instance fields
.field public final a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;->b:Lcom/perfectcorp/thirdparty/com/google/gson/l;

    return-void
.end method

.method public constructor <init>(Lcom/perfectcorp/thirdparty/com/google/gson/Gson;)V
    .locals 0

    invoke-direct {p0}, Lcom/perfectcorp/thirdparty/com/google/gson/k;-><init>()V

    iput-object p1, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->w()Lcom/perfectcorp/thirdparty/com/google/gson/stream/c;

    move-result-object v0

    sget-object v1, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/k;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lr81;->b()V

    return-object v1

    :pswitch_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->C()V

    return-object v1

    :pswitch_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->B()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->E()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->z()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    new-instance v0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;

    invoke-direct {v0}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->r()V

    :goto_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/t;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->t()V

    return-object v0

    :pswitch_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->h()V

    :goto_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->u()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;->a(Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/a;->o()V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V
    .locals 2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->y()Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    new-instance v1, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;

    invoke-direct {v1, v0}, Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    iget-object p0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;->a:Lcom/perfectcorp/thirdparty/com/google/gson/Gson;

    invoke-virtual {p0, v1}, Lcom/perfectcorp/thirdparty/com/google/gson/Gson;->a(Lcom/perfectcorp/thirdparty/com/google/gson/reflect/TypeToken;)Lcom/perfectcorp/thirdparty/com/google/gson/k;

    move-result-object p0

    instance-of v0, p0, Lcom/perfectcorp/thirdparty/com/google/gson/internal/bind/i;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->t()V

    invoke-virtual {p1}, Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;->w()V

    return-void

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/perfectcorp/thirdparty/com/google/gson/k;->b(Lcom/perfectcorp/thirdparty/com/google/gson/stream/d;Ljava/lang/Object;)V

    return-void
.end method
