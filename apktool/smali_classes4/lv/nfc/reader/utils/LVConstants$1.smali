.class Llv/nfc/reader/utils/LVConstants$1;
.super Ljava/util/HashMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Llv/nfc/reader/utils/LVConstants;->createHeaders(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$auraId:Ljava/lang/String;

.field final synthetic val$clientID:Ljava/lang/String;

.field final synthetic val$clientSecret:Ljava/lang/String;

.field final synthetic val$sfidToken:Ljava/lang/String;

.field final synthetic val$slasToken:Ljava/lang/String;

.field final synthetic val$userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Llv/nfc/reader/utils/LVConstants$1;->val$sfidToken:Ljava/lang/String;

    iput-object p2, p0, Llv/nfc/reader/utils/LVConstants$1;->val$slasToken:Ljava/lang/String;

    iput-object p3, p0, Llv/nfc/reader/utils/LVConstants$1;->val$clientID:Ljava/lang/String;

    iput-object p4, p0, Llv/nfc/reader/utils/LVConstants$1;->val$clientSecret:Ljava/lang/String;

    iput-object p5, p0, Llv/nfc/reader/utils/LVConstants$1;->val$userAgent:Ljava/lang/String;

    iput-object p6, p0, Llv/nfc/reader/utils/LVConstants$1;->val$auraId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "sfid_access_token"

    invoke-virtual {p0, v0, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "slas_access_token"

    invoke-virtual {p0, p1, p2}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client_id"

    invoke-virtual {p0, p1, p3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "client_secret"

    invoke-virtual {p0, p1, p4}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "user-agent"

    invoke-virtual {p0, p1, p5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "auraId"

    invoke-virtual {p0, p1, p6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
