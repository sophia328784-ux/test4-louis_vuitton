.class public Lorg/spongycastle/crypto/tls/AlertDescription;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(S)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_9

    const/16 v1, 0xa

    if-eq p0, v1, :cond_8

    const/16 v1, 0x1e

    if-eq p0, v1, :cond_7

    const/16 v1, 0x3c

    if-eq p0, v1, :cond_6

    const/16 v1, 0x50

    if-eq p0, v1, :cond_5

    const/16 v1, 0x56

    if-eq p0, v1, :cond_4

    const/16 v1, 0x5a

    if-eq p0, v1, :cond_3

    const/16 v1, 0x64

    if-eq p0, v1, :cond_2

    const/16 v1, 0x46

    if-eq p0, v1, :cond_1

    const/16 v1, 0x47

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    packed-switch p0, :pswitch_data_2

    const-string v1, "UNKNOWN"

    goto/16 :goto_0

    :pswitch_0
    const-string v1, "unknown_psk_identity"

    goto/16 :goto_0

    :pswitch_1
    const-string v1, "bad_certificate_hash_value"

    goto/16 :goto_0

    :pswitch_2
    const-string v1, "bad_certificate_status_response"

    goto/16 :goto_0

    :pswitch_3
    const-string v1, "unrecognized_name"

    goto/16 :goto_0

    :pswitch_4
    const-string v1, "certificate_unobtainable"

    goto/16 :goto_0

    :pswitch_5
    const-string v1, "unsupported_extension"

    goto :goto_0

    :pswitch_6
    const-string v1, "decrypt_error"

    goto :goto_0

    :pswitch_7
    const-string v1, "decode_error"

    goto :goto_0

    :pswitch_8
    const-string v1, "access_denied"

    goto :goto_0

    :pswitch_9
    const-string v1, "unknown_ca"

    goto :goto_0

    :pswitch_a
    const-string v1, "illegal_parameter"

    goto :goto_0

    :pswitch_b
    const-string v1, "certificate_unknown"

    goto :goto_0

    :pswitch_c
    const-string v1, "certificate_expired"

    goto :goto_0

    :pswitch_d
    const-string v1, "certificate_revoked"

    goto :goto_0

    :pswitch_e
    const-string v1, "unsupported_certificate"

    goto :goto_0

    :pswitch_f
    const-string v1, "bad_certificate"

    goto :goto_0

    :pswitch_10
    const-string v1, "no_certificate"

    goto :goto_0

    :pswitch_11
    const-string v1, "handshake_failure"

    goto :goto_0

    :pswitch_12
    const-string v1, "record_overflow"

    goto :goto_0

    :pswitch_13
    const-string v1, "decryption_failed"

    goto :goto_0

    :pswitch_14
    const-string v1, "bad_record_mac"

    goto :goto_0

    :cond_0
    const-string v1, "insufficient_security"

    goto :goto_0

    :cond_1
    const-string v1, "protocol_version"

    goto :goto_0

    :cond_2
    const-string v1, "no_renegotiation"

    goto :goto_0

    :cond_3
    const-string v1, "user_canceled"

    goto :goto_0

    :cond_4
    const-string v1, "inappropriate_fallback"

    goto :goto_0

    :cond_5
    const-string v1, "internal_error"

    goto :goto_0

    :cond_6
    const-string v1, "export_restriction"

    goto :goto_0

    :cond_7
    const-string v1, "decompression_failure"

    goto :goto_0

    :cond_8
    const-string v1, "unexpected_message"

    goto :goto_0

    :cond_9
    const-string v1, "close_notify"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_14
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x28
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x6e
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
