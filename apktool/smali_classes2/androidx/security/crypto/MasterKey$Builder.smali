.class public final Landroidx/security/crypto/MasterKey$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Landroid/security/keystore/KeyGenParameterSpec;

.field public c:Landroidx/security/crypto/MasterKey$KeyScheme;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 9
    const-string v0, "_androidx_security_master_key_"

    invoke-direct {p0, p1, v0}, Landroidx/security/crypto/MasterKey$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    iput-object p2, p0, Landroidx/security/crypto/MasterKey$Builder;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Landroidx/security/crypto/MasterKey$KeyScheme;)V
    .locals 2

    sget-object v0, Landroidx/security/crypto/MasterKey$1;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/security/crypto/MasterKey$Builder;->b:Landroid/security/keystore/KeyGenParameterSpec;

    if-nez v0, :cond_0

    iput-object p1, p0, Landroidx/security/crypto/MasterKey$Builder;->c:Landroidx/security/crypto/MasterKey$KeyScheme;

    return-void

    :cond_0
    const-string p0, "KeyScheme set after setting a KeyGenParamSpec"

    invoke-static {p0}, Lmd;->n(Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p0, "Unsupported scheme: "

    invoke-static {p1, p0}, Laz;->m(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
