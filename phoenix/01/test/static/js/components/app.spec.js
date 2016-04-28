import React from 'react';
import {expect} from 'chai';
import {shallow} from 'enzyme';
import App from 'phoenix_1/components/app';
import Form from 'phoenix_1/components/form';

describe('App', () => {
  it ('renders html', () => {
    const wrapper = shallow(<App />);
    expect(wrapper.find(Form)).to.have.length(1);
  });
});
