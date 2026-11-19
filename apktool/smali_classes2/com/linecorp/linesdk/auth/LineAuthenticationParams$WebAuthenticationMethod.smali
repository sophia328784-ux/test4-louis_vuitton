.class public final enum Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/linecorp/linesdk/auth/LineAuthenticationParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebAuthenticationMethod"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

.field public static final enum email:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

.field public static final enum qrCode:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    const-string v1, "email"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;->email:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    new-instance v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    const-string v2, "qrCode"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;->qrCode:Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    filled-new-array {v0, v1}, [Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    move-result-object v0

    sput-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;->$VALUES:[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;
    .locals 1

    const-class v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    return-object p0
.end method

.method public static values()[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;
    .locals 1

    sget-object v0, Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;->$VALUES:[Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    invoke-virtual {v0}, [Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/linecorp/linesdk/auth/LineAuthenticationParams$WebAuthenticationMethod;

    return-object v0
.end method
