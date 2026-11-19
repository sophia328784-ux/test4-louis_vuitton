.class public Lcom/linkplay/lpmdpkit/utils/PhoneUUIDBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static uuidBuild:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const/16 v3, 0xa

    invoke-static {v3, v2, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-static {v3, v2, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v2, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    rem-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    sget-object v1, Landroid/os/Build;->HOST:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->TAGS:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lo60;->x(ILjava/lang/String;Ljava/lang/StringBuilder;)V

    sget-object v1, Landroid/os/Build;->USER:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    rem-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/PhoneUUIDBuilder;->uuidBuild:Ljava/lang/String;

    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/linkplay/lpmdpkit/utils/PhoneUUIDBuilder;->uuidBuild:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uuidBuild()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/linkplay/lpmdpkit/utils/PhoneUUIDBuilder;->uuidBuild:Ljava/lang/String;

    return-object v0
.end method
