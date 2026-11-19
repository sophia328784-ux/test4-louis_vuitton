.class public Lcom/sightcall/universal/internal/model/Survey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sightcall/universal/internal/model/Survey$Replacements;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/sightcall/universal/internal/model/Survey;",
            ">;"
        }
    .end annotation
.end field

.field private static final EXTRA_AGENT_LOGIN:Ljava/lang/String; = "extra.agentlogin"

.field private static final EXTRA_CASE_REPORT_ID:Ljava/lang/String; = "extra.casereportid"

.field private static final EXTRA_DISPLAY_NAME:Ljava/lang/String; = "extra.displayname"

.field private static final EXTRA_NETWORK_CARRIER:Ljava/lang/String; = "extra.networkcarrier"

.field private static final EXTRA_NETWORK_TYPE:Ljava/lang/String; = "extra.networktype"

.field private static final EXTRA_REFERENCE:Ljava/lang/String; = "extra.reference"

.field private static final EXTRA_USECASE_NAME:Ljava/lang/String; = "extra.usecasename"


# instance fields
.field public final button:Ljava/lang/String;

.field private final extras:Landroid/os/Bundle;

.field public final immediate:Z

.field public final raw:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sightcall/universal/internal/model/Survey$1;

    invoke-direct {v0}, Lcom/sightcall/universal/internal/model/Survey$1;-><init>()V

    sput-object v0, Lcom/sightcall/universal/internal/model/Survey;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/Survey;->immediate:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/Survey;->title:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/Survey;->button:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/Survey;->immediate:Z

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcom/sightcall/universal/internal/model/Survey;->title:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lcom/sightcall/universal/internal/model/Survey;->button:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    .line 52
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/sightcall/universal/internal/model/Survey;->immediate:Z

    .line 55
    iput-object p1, p0, Lcom/sightcall/universal/internal/model/Survey;->title:Ljava/lang/String;

    .line 56
    iput-object p2, p0, Lcom/sightcall/universal/internal/model/Survey;->button:Ljava/lang/String;

    .line 57
    iput-object p3, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    .line 58
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    iput-object p1, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    return-void
.end method

.method private static notNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isValid()Z
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Survey{immediate="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/sightcall/universal/internal/model/Survey;->immediate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/Survey;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', button=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/Survey;->button:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', raw=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', extras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "extra.reference"

    invoke-virtual {p0, v0, p2}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    const-string p2, "extra.displayname"

    invoke-virtual {p0, p2, p5}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p6, :cond_1

    const-string p2, "extra.agentlogin"

    invoke-virtual {p0, p2, p6}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p1}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->networkType(Landroid/content/Context;)Lcom/sightcall/pratik/extensions/NetworkType;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    const-string p5, "extra.networktype"

    invoke-virtual {p0, p5, p2}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "extra.networkcarrier"

    invoke-static {p1}, Lcom/sightcall/pratik/extensions/ContextExtensionsKt;->networkCarrier(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra.usecasename"

    invoke-virtual {p0, p1, p3}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    const-string p1, "extra.casereportid"

    invoke-virtual {p0, p1, p4}, Lcom/sightcall/universal/internal/model/Survey;->putExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public uri(Landroid/content/Context;)Landroid/net/Uri;
    .locals 6

    iget-object v0, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/sightcall/universal/internal/model/Survey$Replacements;->values()[Lcom/sightcall/universal/internal/model/Survey$Replacements;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {v4}, Lcom/sightcall/universal/internal/model/Survey$Replacements;->a(Lcom/sightcall/universal/internal/model/Survey$Replacements;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, p1, p0}, Lcom/sightcall/universal/internal/model/Survey$Replacements;->value(Landroid/content/Context;Lcom/sightcall/universal/internal/model/Survey;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/sightcall/universal/internal/model/Survey;->notNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p0, "\\$\\{.*?\\}"

    const-string p1, ""

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-boolean p2, p0, Lcom/sightcall/universal/internal/model/Survey;->immediate:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/model/Survey;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/model/Survey;->button:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sightcall/universal/internal/model/Survey;->raw:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sightcall/universal/internal/model/Survey;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
