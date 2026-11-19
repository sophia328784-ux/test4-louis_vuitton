.class public Lcom/powerfront/insidewebsdkandroid/models/InsideUser;
.super Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p3}, Lcom/powerfront/insidewebsdkandroid/models/InsideEntity;-><init>(Ljava/util/HashMap;)V

    iput-object p1, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/powerfront/insidewebsdkandroid/models/InsideUser;->c:Ljava/lang/String;

    return-void
.end method
