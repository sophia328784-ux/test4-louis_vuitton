package com.coremedia.iso;

import com.coremedia.iso.boxes.Box;
import com.googlecode.mp4parser.BasicContainer;
import com.googlecode.mp4parser.DataSource;

/* JADX INFO: loaded from: classes2.dex */
public interface BoxParser {
    Box a(DataSource dataSource, BasicContainer basicContainer);
}
