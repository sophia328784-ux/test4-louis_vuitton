.class public final synthetic Lcom/google/common/base/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Splitter$Strategy;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Lcom/google/common/base/a;->a:I

    iput-object p1, p0, Lcom/google/common/base/a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget v0, p0, Lcom/google/common/base/a;->a:I

    iget-object p0, p0, Lcom/google/common/base/a;->b:Ljava/lang/Object;

    packed-switch v0, :pswitch_data_0

    check-cast p0, Lcom/google/common/base/CharMatcher;

    new-instance v0, Lcom/google/common/base/Splitter$1;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/base/Splitter$1;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Lcom/google/common/base/CharMatcher;)V

    return-object v0

    :pswitch_0
    check-cast p0, Ljava/lang/String;

    new-instance v0, Lcom/google/common/base/Splitter$2;

    invoke-direct {v0, p1, p2, p0}, Lcom/google/common/base/Splitter$2;-><init>(Lcom/google/common/base/Splitter;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
