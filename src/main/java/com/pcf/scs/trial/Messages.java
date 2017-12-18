package com.pcf.scs.trial;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.stereotype.Component;

@RefreshScope
@Component
public class Messages {

	@Value("${say.hi}")
	String hi;

	public String getHi() {
		return hi;
	}

}
