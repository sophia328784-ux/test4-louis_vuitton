.class public Lorg/teleal/cling/model/meta/ModelDetails;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;

.field public final d:Ljava/net/URI;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    .line 18
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    .line 21
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->b:Ljava/lang/String;

    .line 22
    iput-object p3, p0, Lorg/teleal/cling/model/meta/ModelDetails;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->b:Ljava/lang/String;

    iput-object p3, p0, Lorg/teleal/cling/model/meta/ModelDetails;->c:Ljava/lang/String;

    invoke-static {p4}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->d:Ljava/net/URI;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URI;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object p1, p0, Lorg/teleal/cling/model/meta/ModelDetails;->a:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lorg/teleal/cling/model/meta/ModelDetails;->b:Ljava/lang/String;

    .line 26
    iput-object p3, p0, Lorg/teleal/cling/model/meta/ModelDetails;->c:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lorg/teleal/cling/model/meta/ModelDetails;->d:Ljava/net/URI;

    return-void
.end method
